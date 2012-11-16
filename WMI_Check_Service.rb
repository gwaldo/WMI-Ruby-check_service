#! /usr/bin/env ruby

# Check Windows Service

require 'win32ole'
wmi = WIN32OLE.connect("winmgmts://")

#services = wmi.ExecQuery("Select * from Win32_Service")
#services = wmi.ExecQuery("Select * from Win32_Service where Name = 'WebClient'")

zabbixservice = 'Zabbix Agent'
#zabbixservice = 'winmgmt'
services = wmi.ExecQuery("Select * from Win32_Service where Name = '#{zabbixservice}'")
#puts services.count
if services.count >= 1
	puts "Yaay!"
else
	puts "Nothing to see here, boss."
end

#for service in services do
	#puts service.Name
#	puts "#{service.Name} #{service.StartMode} #{service.State} #{service.Status}"
#end