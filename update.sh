#!/bin/bash

if [ -d working/wordpress ]
then
	svn up working/wordpress
else
	svn co https://core.svn.wordpress.org/trunk/ working/wordpress
fi
[ ! -d html/wordpress  ] && mkdir html/wordpress
phpxref/phpxref.pl -c wordpress.cfg
