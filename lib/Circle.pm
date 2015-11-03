package Circle;
use Moo;
 
extends 'Point';
 
has r => (is => 'rw');
 
sub area {
    my ($self) = @_;
    return $self->r * $self->r * 3.14;
}
 
1;
