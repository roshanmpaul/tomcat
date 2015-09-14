#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2016, Ajjj
#
# All rights reserved - Do Not Redistribute
#
remote_file "/opt/apache-tomcat-7.0.55.zip" do
  source "https://nexus.kdc.capitalone.com/mother/service/local/repositories/central/content/org/apache/tomcat/tomcat/7.0.55/tomcat-7.0.55.zip"
end
cookbook_file "/opt/tomcat.sh" do
  source "tomcat.sh"
  mode   '0755'
  owner  'root'
end
template "/etc/init.d/tomcat" do
  source "tomcat.erb"
  mode "0755"
end
execute "tomcat.sh" do
  command "/opt/tomcat.sh"
end
