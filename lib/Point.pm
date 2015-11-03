package Point;

use Moo;


has x => (is => 'rw');
has y => (is => 'rw');


sub coordinates {
   my ($self) = @_;
 
   return sprintf "[%s, %s]", $self->x, $self->y;
}

sub move_by {
    my ($self, $dx, $dy) = @_;
 
    my $x_temp = $self->x;
    $x_temp += $dx;
    $self->x( $x_temp );
 
    $self->y( $self->y + $dy );
 
    return;
}

1;
