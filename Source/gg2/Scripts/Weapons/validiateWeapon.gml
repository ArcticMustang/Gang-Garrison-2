// validateWeapon(playerid, weapon index)

player = argument0;
weapon = argument1;

if (player.validateLoadouts == true) // you can disable this to disable the class restrictions
{
    if (ds_list_find_index(global.classWeapons[player.class], weapon) != -1)
        return ds_list_find_value(global.weaponList, weapon);
    else // return the base weapon
        return ds_list_find_value(global.weaponList, ds_list_find_value(global.classWeapons[player.class], 0));
}
else // search the global list
    return ds_list_find_value(global.weaponList, weapon);
