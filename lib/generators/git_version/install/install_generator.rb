module GitVersion
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      desc <<DESC
Description:
    Copy git-version files to your application.
DESC

      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def copy_gitattributes
        template 'gitattributes', '.gitattributes'
      end

      def copy_version
        template 'config/version.txt'
      end
    end
  end
end

