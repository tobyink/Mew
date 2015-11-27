package Class;

use lib qw{lib ../lib};
use 5.020;
use Mew;
has  _foo  => PositiveNum;
has -_bar  => Bool;  # note the minus: it means attribute is not `required`
has  _type => Str, (default => 'text/html');
has  _cust => ( is => 'rw', default => 'Zoffix' ); # standard Moo `has`

package main;

my $c = Class->new( foo => 42, bar => 1 );

say $c->_foo;
say $c->_bar;
say $c->_type;
say $c->_cust;
say $c->_cust( 42 );


