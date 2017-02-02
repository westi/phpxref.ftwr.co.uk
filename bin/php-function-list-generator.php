<?php
/**
 * This doesn't generate a perfect list but it generates one for the environment in which the code is going to be run
 * which is _good_ enough
 */
function generate_function_list() {
	$_defined_functions = get_defined_functions();
	$_list = implode( "\n", $_defined_functions['internal'] );
	echo $_list;	
}

generate_function_list();
