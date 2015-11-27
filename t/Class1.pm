package t::Class1;

use Mew;

has  _num     => PositiveNum;
has -_bool    => Bool;
has  _type    => ( Str, default => 'text/html');
has -_init    => ( Str, init_arg => 'initizer');
has -chained  => ( Str, chained => 1 );
has -chained2 => ( Num, chained => 1 );

has [qw/ar1 ar2/] => Str, ( required => 0, is => 'rw' );
# has [qw/_ar2/] => Str, ( required => 0 );

has  _cust => ( is => 'rw', default => 'Zoffix' );
1;