# Hierarchical data in relational databases... SoEasy!

Jay's talk about theory &amp; implementation of DBIx::Class::Tree::NestedSet

## Rebuilding from scratch

````
cd db
sqlite3 db.sqlite3 < schema.sql
cd ..
script/refresh_schema.pl

Add Tree::NestedSet directives to bottom of lib/MyApp/Schema/Result/Taxonomy.pm

All done!  :)
````

