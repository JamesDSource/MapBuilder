/// @desc load_json(filename)
/// @arg filename

var filename = argument[0];

var buffer = buffer_load(filename);
var str = buffer_read(buffer, buffer_string);
buffer_delete(buffer);

return json_decode(str);