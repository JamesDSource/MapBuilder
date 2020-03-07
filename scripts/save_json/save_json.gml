/// @desc save_json(filename, string)
/// @arg filename
/// @arg string

var filename = argument[0];
var str = argument[1];

var buffer = buffer_create(string_byte_length(str)+1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, str);
buffer_save(buffer, filename);
buffer_delete(buffer);