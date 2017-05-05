# SimpleSample
ActiveRecord classes currently lack a direct `.sample` method. Sure, you can do `.all.sample`, but that delegates to `Array.sample` and operates at the Ruby level, rather than the SQL level. As a short experiment in gem creation, and interfacing with SQL from ActiveRecord, I wrote this small plugin.

You can now call `.sample` directly on an ActiveRecord class, and it will be equivalent to calling `.order("RANDOM()").limit(1)` (in Postgres and SQLite) or `.order("RAND()").limit(1)` (in MySQL). You can also provide a number of items to sample (such as `.sample(12)`).

## Usage
Simply call `.sample` on any ActiveRecord class or at the end of a chain of query methods.

You can _technically_ call `.sample` anywhere in the chain, but `.sample.where(x: true)` will sample _from_ items meeting the condition, rather than return which random items meet that condition.

In short: The results are less surprising when `.sample` is the last method in the chain.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'simple_sample', git: 'git://github.com/kjrocker/simple_sample.git'
```

And then execute:
```bash
$ bundle
```

Then modify `models/application_record.rb` as follows:
```ruby
class ApplicationRecord < ActiveRecord::Base
  include SimpleSample # Load the SimpleSample gem
  self.abstract_class = true
end
```

## Contributing
Make a PR, include tests, you know the drill.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
