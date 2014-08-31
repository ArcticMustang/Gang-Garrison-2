//the format for a point is "xxxxyyyys;" where x is an x coordinate digit, y is a y coordinate digit, and s is the movementStatus var
//String them together in the order which they occur.

var pointString, pointSet, pointList, i;
pointString = argument0;

global.payload_path=ds_list_create();
global.payload_points_status=ds_list_create();

pointList = split(pointString, ";");


for (i = 0; i <= ds_list_size(pointList)-2; i += 1)//I subtract 2 because apparently, gm thinks that it's a good idea to add 2 points to the end of the track.
{
listString=ds_list_find_value(pointList,i)
//xVal=string_char_at(listString,0)+string_char_at(listString,1)+string_char_at(listString,2)+string_char_at(listString,3)
//yVal=string_char_at(listString,4)+string_char_at(listString,5)+string_char_at(listString,6)+string_char_at(listString,7)
xVal=string_copy(listString,1,4);
yVal=string_copy(listString,5,4);
moveStatus=real(string_digits(string_char_at(listString,9)));
ds_list_add(global.payload_path,instance_create(real(string_digits(xVal)),real(string_digits(yVal)),PayloadNode));
with ds_list_find_value(global.payload_path,i) moveStatus = other.moveStatus;
with ds_list_find_value(global.payload_path,i) nodeNum = i;
if string_length(string_digits(listString))!=9 show_error("Invalid string length for coordinate set "+string(i)+". Point String formats should look something like this: 'xxxxyyyym;', where the x's are x coordinate digits, the y's are y coordinate digits, and the m is the status of the cart's movement (0 for standard, 1 for free-fall)",1);

}
ds_list_destroy(pointList);
with PayloadNode{
event_user(0);
}
