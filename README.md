# ARK Ruby - Client

<p align="center">
    <img src="https://github.com/ArkEcosystem/ruby-client/blob/master/banner.png" />
</p>

> A simple Ruby API client for the ARK Blockchain.

[![Build Status](https://img.shields.io/travis/ArkEcosystem/ruby-client/master.svg?style=flat-square)](https://travis-ci.org/ArkEcosystem/ruby-client)
[![Latest Version](https://img.shields.io/github/release/ArkEcosystem/ruby-client.svg?style=flat-square)](https://github.com/ArkEcosystem/ruby-client/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Installation

## Bundler

Add this line to your application's Gemfile:

```ruby
gem 'arkecosystem-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arkecosystem-client

## Usage

```ruby
require 'arkecosystem/client'

client = ArkClient.client

connection = ArkEcosystem::Client::Connection.new({ host: "https://main.host.io:4003/api/", version: 1 }, 'main')
client.connect(connection)

connection = ArkEcosystem::Client::Connection.new({ host: "https://back.host.io:4003/api/", version: 1 }, 'backup')
client.connect(connection)

begin
    response = JSON.parse client
      .connection('main')
      .accounts.balance('DARiJqhogp2Lu6bxufUFQQMuMyZbxjCydN')
      .body

    print response['balance']
rescue
    response = JSON.parse client
      .connection('back')
      .accounts.balance('DARiJqhogp2Lu6bxufUFQQMuMyZbxjCydN')
      .body

    print response['balance']
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, copy and edit the contents of the `.env.example` file into a file called `.env`. This file represents your network and account details. You can then run the tests using `rake spec`. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Security

If you discover a security vulnerability within this package, please send an e-mail to security@ark.io. All security vulnerabilities will be promptly addressed.

## Credits

- [Brian Faust](https://github.com/faustbrian)
- [All Contributors](../../../../contributors)

## License

[MIT](LICENSE) © [ArkEcosystem](https://ark.io)
