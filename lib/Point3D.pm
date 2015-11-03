package Point3D;

use Moo;

 
extends 'Point';
 
has z => (is => 'rw');

sub move_by {
    my ($self, $dx, $dy, $dz) = @_;
 
    use Data::Dumper;
    print 'Point ' . Dumper \@_;
 
    $self->x( $self->x + $dx );
    $self->y( $self->y + $dy );
 
    return;
}

before move_by => sub {
    my ($self, $dx, $dy, $dz) = @_;
 
    use Data::Dumper;
    print 'Point3D ' . Dumper \@_;
 
    $self->z( $self->z + $dz );
 
    return;
};
 
after move_by => sub {
    my ($self, $dx, $dy, $dz) = @_;
 
    $self->z( $self->z + $dz );
 
    return;
};

around move_by => sub {
    my ($orig, $self, $dx, $dy, $dz) = @_;
 
    $self->z( $self->z + $dz );
    $self->$orig($dx, $dy);
 
    return;
};

1;

