// Initialize a list of weapons
// Ordered by time added because reordering these by class each time a new weapon is added
// would completely offset other things such as loadout saving

// global list of weapons
global.weaponList = ds_list_create();

// list of weapons class are allowed to use
// loop through class constants(0 - 9) to create a list for each class
for(i = 0; i < 10; i += 1)
    global.classWeapons[CLASS_SCOUT + i] = ds_list_create();

addWeapon(Scattergun, CLASS_SCOUT);
addWeapon(Flamethrower, CLASS_PYRO);
addWeapon(Rocketlauncher, CLASS_SOLDIER);
addWeapon(Minigun, CLASS_HEAVY);
addWeapon(Minegun, CLASS_DEMOMAN);
addWeapon(Medigun, CLASS_MEDIC);
addWeapon(Shotgun, CLASS_ENGINEER);
addWeapon(Revolver, CLASS_SPY);
addWeapon(Rifle, CLASS_SNIPER);
addWeapon(Blade, CLASS_QUOTE);

addWeapon(BlackBox, CLASS_SOLDIER);
