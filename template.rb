gem 'irb', '~> 1.0'

gsub_file 'Gemfile', /gem 'sqlite3'$/, "\\0, '~> 1.3.6'"
