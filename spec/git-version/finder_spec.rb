require 'spec_helper'
require 'git-version/finder'
require 'tmpdir'
require 'fileutils'

describe GitVersion::Finder do
  after(:each) do
    ENV['COMMIT_HASH'] = nil
  end

  it 'uses the COMMIT_HASH environment variable' do
    ENV['COMMIT_HASH'] = '12345'

    expect(subject.find).to eq('12345')
  end

  it 'uses the config/version.txt file if it exists' do
    Dir.mktmpdir do |root|
      Rails.root = root
      FileUtils.mkdir(File.join(root, 'config'))
      File.open(File.join(root, 'config', 'version.txt'), 'w') do |file|
        file.write('$Id: 055c8729cdcc372500a08db659c045e16c4409fb $')
      end

      expect(subject.find).to eq('055c8729cdcc372500a08db659c045e16c4409fb')
    end
  end

  it 'uses the git repo if one is found' do
    expect(subject.find).to eq(`git rev-parse HEAD`)
  end
end

