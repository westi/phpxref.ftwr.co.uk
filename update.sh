#!/bin/bash

#WordPress
if [ -d working/wordpress ]
then
	svn up working/wordpress
else
	svn co https://core.svn.wordpress.org/trunk/ working/wordpress
fi
[ ! -d html/wordpress  ] && mkdir html/wordpress
phpxref/phpxref.pl -c wordpress.cfg

#bbPress
if [ -d working/bbpress ]
then
	svn up working/bbpress
else
	svn co https://bbpress.svn.wordpress.org/trunk/ working/bbpress
fi
[ ! -d html/bbpress  ] && mkdir html/bbpress
phpxref/phpxref.pl -c bbpress.cfg

#BackPress
if [ -d working/backpress ]
then
	svn up working/backpress
else
	svn co https://svn.automattic.com/backpress/trunk/ working/backpress
fi
[ ! -d html/backpress  ] && mkdir html/backpress
phpxref/phpxref.pl -c backpress.cfg

#BuddyPress
if [ -d working/buddypress ]
then
	svn up working/buddypress
else
	svn co https://buddypress.svn.wordpress.org/trunk/ working/buddypress
fi
[ ! -d html/buddypress  ] && mkdir html/buddypress
phpxref/phpxref.pl -c buddypress.cfg

#GlotPress
if [ -d working/glotpress ]
then
	svn up working/glotpress
else
	svn co https://github.com/GlotPress/GlotPress-WP/trunk/ working/glotpress
fi
[ ! -d html/glotpress  ] && mkdir html/glotpress
phpxref/phpxref.pl -c glotpress.cfg
