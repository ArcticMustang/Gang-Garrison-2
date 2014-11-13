// adds a weapon to the list
// argument0: weapon
// argument1: class constant
// argument1 can be -1 to indicate that it shouldn't be added to a class

// global list of weapons
ds_list_add(global.weaponList, argument0);

// weapons that classes are allowed to use
if (argument1 != -1)
    ds_list_add(global.classWeapons[argument1], ds_list_find_index(global.weaponList, argument0));
