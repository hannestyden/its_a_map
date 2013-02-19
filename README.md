# ItsAMap

![It's a Map](http://cdn.memegenerator.net/instances/400x/33842842.jpg)

>> A beloved child has many names.

[Swedish proverb](http://en.wikiquote.org/wiki/Swedish_proverbs)

What Ruby calls `Hash` is actually a map, a dictionary or an associative array.

A hash is something different:

>> A hash function is any algorithm or subroutine that maps large data sets of variable length to smaller data sets of a fixed length.
>> [...]
>> The values returned by a hash function are called hash values, hash codes, hash sums, checksums or simply hashes.

[Hash function](http://en.wikipedia.org/wiki/Hash_function)

I assume the name comes from "hash map" or "hash table", but that's an implementation detail and I don't care about that.

This library allows you to call maps, dictionaries or associative array by their actual name.

## Installation

Add this line to your application's Gemfile:

    gem 'its_a_map'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install its_a_map

## Usage

```ruby
require 'its_a_map'

{}.class # => Map
# but still
Hash === {} # => true
```

or if you're really a pythonista or cocoahead

```ruby
require 'its_a_map/dictionary'

{}.class # => Dictionary
# but still
Hash === {} # => true
```

or if you're a PHPer or CS pedantic

```ruby
require 'its_a_map/associative_array'

{}.class # => AssociativeArray
# but still
Hash === {} # => true
```

### With `ActiveSupport`

In case you want to use it in combination with `ActiveSupport`s `HashWithIndifferentAccess`:

```ruby
require 'activesupport/hash_with_indifferent_access'
require 'its_a_map/active_support'

hwia = ActiveSupport::HashWithIndifferentAccess.new({})
hwia.class # => ActiveSupport::MapWithIndifferentAccess
# but still
mwia = ActiveSupport::MapWithIndifferentAccess.new({})
ActiveSupport::HashWithIndifferentAccess === mwia # => true
```

You can also
`require 'its_a_map/active_support/map'`,
`require 'its_a_map/active_support/dictionary'`, or
`require 'its_a_map/active_support/associative_array'`.

Enjoy!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
