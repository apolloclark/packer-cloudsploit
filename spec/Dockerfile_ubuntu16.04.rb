# spec/Dockerfile_spec.rb

require_relative "spec_helper"

describe "Dockerfile" do
  before(:all) do
    load_docker_image()
    set :os, family: :debian
  end

  describe "Dockerfile#running" do
    it "runs the right version of Ubuntu" do
      expect(os_version).to include("Ubuntu")
      expect(os_version).to include("16.04")
    end
    it "runs as root" do
      expect(sys_user).to eql("root")
    end
  end

  describe package('nodejs') do
    it { should be_installed }
  end
  
  describe command('npm list -g') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should contain 'cloudsploit' }
  end
end
