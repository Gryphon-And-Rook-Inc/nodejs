#
# Cookbook:: nodejs
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute 'update apt-get' do
  command 'sudo apt-get update'
end

execute 'add nodejs repo' do
  command 'curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh'
end

execute 'install nodejs' do
  command 'sudo bash nodesource_setup.sh'
end

execute 'install nodejs' do
  command 'sudo apt-get install -y --force-yes nodejs'
end
