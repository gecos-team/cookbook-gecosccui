#
# Cookbook Name:: gecosccui
# Recipe:: backend
#
# Copyright 2013, Junta de Andalucia
# http://www.juntadeandalucia.es/
#
# All rights reserved - EUPL License V 1.1
# http://www.osor.eu/eupl
#

#TODO: choose from available versions in install script
#default['gecoscc-ui']['backend']['version'] = '2.1.10'
default['gecoscc-ui']['backend']['version'] = ENV['GECOSCC_VER']
default['gecoscc-ui']['backend']['package'] = 'https://github.com/gecos-team/gecoscc-ui/archive/' << default['gecoscc-ui']['backend']['version'] << '.tar.gz'
default['gecoscc-ui']['backend']['virtual_prefix'] = '/opt/gecosccui-'
default['gecoscc-ui']['backend']['workers'] = 2
default['gecoscc-ui']['backend']['firewall'] = 'lokkit'
default['gecoscc-ui']['chef-server']['url'] = 'https://localhost/'
default['gecoscc-ui']['mongodb']['url'] = 'mongodb://localhost:27017/gecoscc'

default['supervisor']['port'] = '9001'
default['supervisor']['user'] = 'internal'
default['supervisor']['password'] = 'changeme'
