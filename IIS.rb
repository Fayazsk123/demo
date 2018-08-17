#install iis on windows

iis_install 'install IIS' do
  additional_components node['iis']['components']
  source node['iis']['source']
end

#start iis service

service 'iis' do
  service_name 'W3SVC'
  action [:enable, :start]
end

#checking iis service

service 'iis' do
  service_name 'W3SVC'
  action [:enable, :start]
end




#logs:

#/var/log/opscode/service_name.  //chef workstaion logs

#$ chef-server-ctl tail //chef server logs


#FYR:

#https://www.linode.com/docs/applications/configuration-management/creating-your-first-chef-cookbook/

#https://docs.aws.amazon.com/opsworks/latest/userguide/cookbooks-101-opsworks-install-software-feature.html


Mysql

#knife cookbook site install mysql-windows  
#knife cookbook site download mysql-windows

#depends 'mysql', '~> 8.5.1' //~/chef-repo/cookbooks/lamp_stack/metadata.rb

#knife cookbook upload mysql --include-dependencies




