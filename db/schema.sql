CREATE TABLE taxonomies (
  -- DBIx::Class::Tree::NestedSet
  id       INTEGER PRIMARY KEY AUTOINCREMENT,
  root_id  integer,
  lft      integer NOT NULL,
  rgt      integer NOT NULL,
  level    integer NOT NULL,

  -- Whatever columns we want
  name     text    NOT NULL
);

