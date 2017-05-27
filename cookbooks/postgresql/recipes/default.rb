#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
#
package 'postgresql-server' do
         notifies :run, 'execute[postgresql-init]', :immediately
end

execute 'postgresl-init' do
         command 'postgresl-setup initdb'
         action :nothing
end

service 'postgresl' do
         action [:enable, :start]
end
