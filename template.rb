gem 'irb', '~> 1.0'

gsub_file 'Gemfile', /gem 'sqlite3'$/, "\\0, '~> 1.3.6'"

inject_into_file 'Gemfile', after: "group :development, :test do\n" do <<-'RUBY'
  gem 'faker', '~> 1.9'
RUBY
end

inject_into_file 'Gemfile', after: "group :development, :test do\n" do <<-'RUBY'
  gem 'factory_bot_rails', '~> 5.0'
RUBY
end

inject_into_file 'test/test_helper.rb', after: "class ActiveSupport::TestCase\n" do <<-'RUBY'
  include FactoryBot::Syntax::Methods
RUBY
end
