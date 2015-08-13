#! env perl 

use MyApp::Schema;

my $schema = MyApp::Schema->connect('dbi:SQLite:dbname=db/db.sqlite3');

# Nuke all existing data:
$schema->resultset('Taxonomy')->search()->delete();

# ---------------------
# Demo 1: Create two rows, link them:
my $jay = $schema->resultset('Taxonomy')->new({
  name => 'Jay'
})->insert;

my $ruby = $schema->resultset('Taxonomy')->new({
  name => 'Ruby and Open Source Meetup'
})->insert;

$ruby->attach_rightmost_child($jay);

# -------------------------------
exit unless ($ARGV[0] > 1);
# Demo 2: Loop in some more hierarchy
my $prev = $ruby;
foreach my $level (
  'Omaha',
  'Nebraska',
  'USA',
  'North America',
  'Earth',
  'Milky Way',
) {
  my $row = $schema->resultset('Taxonomy')->new({name => $level})->insert;
  $row->attach_rightmost_child($prev);
  $prev = $row;
}

# -------------------------------
exit unless ($ARGV[0] > 2);
# Demo 3: Add more siblings so the tree looks more interesting
my $usa = $schema->resultset('Taxonomy')->find({name => 'USA'});

$usa->attach_left_sibling(
  $schema->resultset('Taxonomy')->new({name => 'Canada'})->insert
);

my $zambia   = $schema->resultset('Taxonomy')->new({name => 'Zambia'})->insert;
my $central  = $schema->resultset('Taxonomy')->new({name => 'Central Province'})->insert;
my $southern = $schema->resultset('Taxonomy')->new({name => 'Southern Province'})->insert;
my $choma    = $schema->resultset('Taxonomy')->new({name => 'Choma City'})->insert;

$usa->attach_right_sibling($zambia);
$zambia->attach_rightmost_child($central, $southern);
$southern->attach_rightmost_child($choma);



