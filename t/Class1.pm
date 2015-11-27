package t::Class1;

use Mew;

has  _num     => PositiveNum;
has -_bool    => Bool;
has  _type    => ( Str, default => 'text/html');
has -chained  => ( Str, chained => 1 );
has -chained2 => ( Num, chained => 1 );

has  _cust => ( is => 'rw', default => 'Zoffix' );
1;