module GitVersion
  class Finder
    def find
      from_environment || from_config_file || from_git_repo
    end

    private

    def from_environment
      ENV['COMMIT_HASH']
    end

    def from_config_file
      version_file = File.join(Rails.root, 'config', 'version.txt')

      if File.exists? version_file
        File.read(version_file).match(/\$Id: ([a-zA-Z0-9]*) \$/)[1] rescue nil
      end
    end

    def from_git_repo
      `git rev-parse HEAD`
    end
  end
end

