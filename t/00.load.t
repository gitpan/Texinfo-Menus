#! /usr/bin/perl
#---------------------------------------------------------------------
# $Id: 00.load.t 1579 2006-10-31 20:44:12Z cjm $
#---------------------------------------------------------------------

use Test::More tests => 1;

BEGIN {
use_ok( 'Texinfo::Menus' );
}

diag( "Testing Texinfo::Menus $Texinfo::Menus::VERSION" );
