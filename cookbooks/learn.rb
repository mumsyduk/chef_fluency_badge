package 'apache' do
         package_name 'httpd'
          action :install
end

service 'httpd' do
        service_name 'httpd'
          action [:enable, :start]
end

file '/var/www/html/index.html' do
      content 'Hello world!'
      mode '0744'
      owner 'root'
      group 'apache'
end

%w{telnet tree mlocate nmap}.each do |pkg|
   package pkg do
      action [:install, :upgrade]
   end
end

#execute 'command-test' do
#         command 'echo paa >> /etc/motd'
#         only_if 'test -r /etc/motd'
#end
#
execute 'command-test' do
         command 'echo esaaba >> /etc/motd'
          only_if { ::File.exist?('/etc/motd') }
end

file '/etc/motd' do
     content 'Welcome Kofi Akomeah!'
end
