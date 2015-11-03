package Person;

use Moo;
# use Carp qw(confess);
use Scalar::Util qw(looks_like_number);
use MooX::Types::MooseLike::Base qw(:all);
use MooX::late;

# FIXME: Add ABSTRACT

# VERSION

has name => ( 
    is   => 'rw',
    # required => 1,
    # isa  => sub {
    #     die 'connot be undef' if not defined $_[0],
    # }
    predicate => 1,
    clearer   => 1,
    default   => 'Foo'

);

# has age => (
#     is  => 'rw',
#     # isa => sub {
#         # confess "'$_[0]' is not an integer!"
#             # if $_[0] !~ /^\d+$/;
#     # },
#     isa => sub {
#         confess "'$_[0]' is not an integer!"
#             if looks_like_number $_[0];
#     },
# );

# has age => (
#     is  => 'rw',
#     isa => 'Int', 
#     default => 0,
# );

has height => (
    is  => 'rw',
    isa => 'Int',
    default => 0,
);

has birthdate => (
    is  => 'rw',
    # isa => 'DateTime',
);

has mother => (
    is  => 'rw',
    isa => 'Person',
);

has children => (
    is  => 'rw',
    default  => sub {[]}
);


my $YEAR = 60*60*24*365;

sub BUILDARGS {
    my ($class, %args) = @_;
    #Used for fixing constructor, Moo will call this method before new 
    use Data::Dumper;
    print "Class: $class\n";
    warn Dumper \%args;
 
    my $age = delete $args{age};
    if ($age) {
        $args{birthdate} = time - $age * $YEAR;
    }
    return \%args;
}

sub age {
    my ($self, $age) = @_;
 
    if ($age) {
        $self->birthdate( time - $age * $YEAR );
    }
 
    return int( (time - $self->birthdate) / $YEAR );
}

1;
