# BirdMigration
Let's assume you have 3 pending migrations with no order.

 Status |  Migration ID    Migration Name
--------------------------------------------------
   up   |  20181029224028  Create users
  down  |  20181029224048  Create add surname to users
   up   |  20181029224059  Create posts
   up   |  20181029224112  Create test los
  down  |  20181029224146  Create lalas
  down  |  20181029224451  Lololo

And some of them (let it be '20181029224451  Lololo') is broken.
And you are going to deploy that code somewhere.
So if you simply run `rake db:migrate` you will have on the server
two passed migrations and an error.

 Status   Migration ID    Migration Name
--------------------------------------------------
   up     20181029224028  Create users
   up     20181029224048  Create add surname to users
   up     20181029224059  Create posts
   up     20181029224112  Create test los
   up     20181029224146  Create lalas
  down    20181029224451  Lololo

So state was not reverted to the same what was before `rake db:migrate` state.

gem 'birds_migrations' will give you ability to do "all or nothing" migrations.

## Usage
`rake birds:migrate`

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'bird_migration'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install bird_migration
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
