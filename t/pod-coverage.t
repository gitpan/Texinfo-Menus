#! /usr/bin/perl -T
#---------------------------------------------------------------------
# $Id: pod-coverage.t 1809 2007-06-10 01:15:30Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage"
    if $@;

my @private = map { qr/^\Q$_\E$/ } qw(
  abort printMasterMenu printMenu printMenuComment readStructure writeMenus
);

my @trust = map { qr/^\Q$_\E$/ } qw(
  update_menus
);

all_pod_coverage_ok({
  also_private => \@private,
  trustme      => \@trust,
});
