//returns the variable named argument1 of the node numbered argument0
//I use this A LOT since I didn't want to have to repeatedly write ds_list_find_value

var point, _var;
point=ds_list_find_value(global.payload_path,argument0);

with point{
return variable_local_get(argument1);
}


