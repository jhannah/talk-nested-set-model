# Hierarchical data in RDBMS... SoEasy!

Jay's live demos from his talk about [nested set model](https://en.wikipedia.org/wiki/Nested_set_model)
featuring [DBIx::Class::Tree::NestedSet](https://metacpan.org/pod/DBIx::Class::Tree::NestedSet).

## Recommended Perlishness

* Use [Perlbrew](perlbrew.pl) (or [plenv](https://github.com/tokuhirom/plenv)) to
manage your perl installs. Using system perl can cause pain. 
* Use the current stable perl because... why not? :) e.g. `perlbrew install 5.22.0`
* Use [cpanm](https://metacpan.org/pod/App::cpanminus) to install CPAN dependencies

The following should give you the full stack you need:

````
cpanm DBIx::Class::Tree::NestedSet
cpanm DBIx::Class::Schema::Loader
````

## Rebuilding from scratch

````
sqlite3 db/db.sqlite3 < db/schema.sql
script/refresh_schema.pl
````

Add Tree::NestedSet directives to bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)


