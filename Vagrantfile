Vagrant.configure("2") do |config|
    config.vm.provider "docker" do |d|
        d.cmd     = ["/sbin/my_init", "--enable-insecure-key"]
        d.build_dir = "vagrant"
        d.has_ssh = true
        d.privileged = true
    end

    config.vm.synced_folder ".", "/root/project"

    config.ssh.username = "root"
    config.ssh.private_key_path = "vagrant/insecure_key"
end
