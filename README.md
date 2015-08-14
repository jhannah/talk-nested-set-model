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

Add [Tree::NestedSet directives](https://github.com/jhannah/talk-nested-set-model/blob/master/lib/MyApp/Schema/Result/Taxonomy.pm#L90-L96) to the bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)

## et. al. 

* Want to try nested sets in Ruby? Check out [awesome_nested_set](https://github.com/collectiveidea/awesome_nested_set), let us know what you think. 
* [Postgres Tree Shootout](http://schinckel.net/2014/11/22/postgres-tree-shootout-part-1%3A-introduction./) is an interesting(?) series(?) of blog articles posts about Adjacency Lists, Path Enumeration, Closure Table, Nested Set in PostgreSQL.

