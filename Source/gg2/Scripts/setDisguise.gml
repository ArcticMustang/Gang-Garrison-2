if(instance_exists(argument0)) {
    if(argument0.object != -1) {
        argument0.object.disguised=true
        if argument1>=11{
        argument0.object.disguiseTeam=TEAM_BLUE
        disguiseTeam=TEAM_BLUE
        argument1-=10
        }else{
        argument0.object.disguiseTeam=TEAM_RED
        disguiseTeam=TEAM_RED
        }
        argument0.object.disguiseClass=argument1-1
        disguiseClass=argument1-1
    }
}
///////////////THIS CODE THANKS TO ORPHEON. A LOT OF MAGIC HAPPENS HERE.
if global.isHost{
     var disguiseName;
     disguiseName=argument0.name 
                                        
                    var num_enemy_players, disguisedPlayer;
                    disguisedPlayer=-1
                    disguiseablePlayers = ds_list_create();
                    
                    for(i=0; i<ds_list_size(global.players); i+=1)
                    {
                        player = ds_list_find_value(global.players, i);
                        if player.team == disguiseTeam
                        {
                            if player.class == disguiseClass
                            {
                                ds_list_add(disguiseablePlayers,player)
                            }
                        }
                    }
                    if !ds_list_empty(disguiseablePlayers){
                        ds_list_shuffle(disguiseablePlayers)
                        disguisedPlayer=ds_list_find_value(disguiseablePlayers,0)
                        if disguisedPlayer!=-1 && instance_exists(disguisedPlayer){
                            disguiseName=disguisedPlayer.name
                        }
                    }else if ds_list_empty(disguiseablePlayers){          
                        for(i=0; i<ds_list_size(global.players); i+=1)
                        {
                            player = ds_list_find_value(global.players, i);
                            if player.team == disguiseTeam
                        {
                            ds_list_add(disguiseablePlayers,player)
                        }
                    }
                    if !ds_list_empty(disguiseablePlayers){
                    ds_list_shuffle(disguiseablePlayers)
                    disguisedPlayer=ds_list_find_value(disguiseablePlayers,0)
                        if disguisedPlayer!=-1 && instance_exists(disguisedPlayer){
                            disguiseName=disguisedPlayer.name
                        }
                    }
                    
                }
     
     
if disguisedPlayer!=-1{
argument0.object.disguiseName=disguiseName
}
ds_list_destroy(disguiseablePlayers)
}
