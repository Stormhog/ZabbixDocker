# ZabbixDocker
Automating Zabbix Server + Agent and copy over a test config. Dockerized (mostly). 

!!!!!!!DO NOT RUN DOCKER_CLEANUP.SH ON A MACHINE WITH DOCKER RUNNING IT WILL DELETE ALL CONTAINERS AND VOLUMES!!!!!!!!

1. Install ansible
2. Run the ansible playbook - ex. sudo ansible-playbook zabbix_docker_playbook.yml - it's only for localhost so no hosts/inventory file. 
3. Open localhost:8080 in browser, login - Admin/zabbix
4. Go to Data Collection -> Hosts -> click on Zabbix Server entry
5. Change IP from 127.0.0.1 to local network IP (get IP from hostname -i)
6. Click on Items link on the agent/host record -> Create Item in the upper right
7. Define a name and the UserParam key and argument in ['*'] between the brackets
8. Click 'Test' and confirm result
9. Select the Graph tab on Items page or Hosts page
10. In the items box on the bottom click 'Add'
11. Search for the name of your created Item from the list and add it 
12. Check the 'Preview' tab and click 'Add' if everything checks out


Factorio and Python HTTP Server for serving production materials:

/c script.on_event(defines.events.on_tick, function(event)
   if event.tick % (60*5) == 0 then 
	 game.write_file("stats.txt", serpent.block(game.forces.player.item_production_statistics.output_counts))
   end
end)


python -m http.server -b 0.0.0.0 8000
