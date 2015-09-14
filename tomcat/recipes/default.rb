#
# Cookbook Name:: tomcat
# Recipe:: default
#
# Copyright 2014, Anuj Gupta
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/opt/apache-tomcat-7.0.55.tar.gz" do
  source "apache-tomcat-7.0.55.tar.gz"
end
cookbook_file "/opt/tomcat.sh" do
  source "tomcat.sh"
  mode   '0755'
  owner  'root'
end
execute "tomcat.sh" do
  command "/opt/tomcat.sh"
end
