# droonga-message-pack-packer

A MessagePack packer for Droonga message. In Droonga message, time
value should be formatted as
[W3C-TDF](http://www.w3.org/TR/NOTE-datetime) string. You need to
format all times in Droonga message as W3C-TDF string by yourself when
you use the original MessagePack packer. This library does it instead
of you. You can pass your Droonga message that may have time values
into MessagePack packer in this library.

## Installation

Add this line to your application's Gemfile:

    gem 'droonga-message-pack-packer

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install droonga-message-pack-packer

## Usage

    require "droonga/message-pack-packer"
    Droonga::MessagePackPacker.pack(message)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
