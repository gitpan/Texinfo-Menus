#!perl
#---------------------------------------------------------------------
# $Id: perlcritic.t 1576 2006-10-30 22:20:11Z cjm $
#---------------------------------------------------------------------

use Test::More;

eval "use Test::Perl::Critic qw(-verbose 10)";
plan skip_all => "Test::Perl::Critic required for testing PBP compliance" if $@;

all_critic_ok();
