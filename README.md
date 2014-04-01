# Magic::Array

Provides easy way for grouping constants into arrays

## Installation

Add this line to your application's Gemfile:

    gem 'magic-array'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install magic-array

## Usage

### from_existing(pattern)

```ruby
class Foo
  BAR_1 = 1
  BAR_2 = 2
  #...
  BAR_N = Float::INFINITY

  BARS = [
    BAR_1,
    BAR_2,
    #...,
    BAR_N
  ]
end
```
become

```ruby
class Foo
  BAR_1 = 1
  BAR_2 = 2
  #...
  BAR_N = Float::INFINITY

  BARS = from_existing /^BAR/ #[1, 2, ..., Infinity]
end
```
so after adding new constant (e.g. `BAR_N+1`) you will not need to modify arrays constant.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
