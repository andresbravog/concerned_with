# ConcernedWith

Simple way to separate model concerns into separate files.

## Instalation

Add the gem dependency to your Gemfile:

```Ruby
gem 'concerned_with'
```

## Usage

```Ruby
# app/models/user.rb
class User < ActiveRecord::Base
  extend ConcernedWith

  concerned_with :validations, :authentication
end

# app/models/user/validations.rb
class User < ActiveRecord::Base
  validates_presence_of :name
end

#app/models/user/authentication.rb
class User < ActiveRecord::Base
  def self.authenticate(name, password)
    find_by_name_and_password(name, password)
  end
end
```
## TODO

- Add documentation in the code

## Contributing

If you want to improve immortal

1. Fork the repo
2. Create a topic branch `git checkout -b my_feature`
3. Push it! `git push origin my_feature`
4. Open a pull request

## CHANGELOG

- 0.0.1 Gemification and 3.2.13 support

