#Setup
bundle install

#Running tests
bundle exec rspec --format documentation

#Running tests with an output file
bundle exec rspec --format documentation --out rspec.txt

#Adding your own tests
Add file to tne spec/features/ folder.  Name them in this pattern what_ever_you_want_spec.rb# zph_rspec_to_remote
