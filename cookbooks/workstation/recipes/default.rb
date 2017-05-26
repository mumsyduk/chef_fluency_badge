#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
#
package 'docker-engine' do
end

service 'docker' do
        action [:enable, :start]
end
