longest_substring
=================

`longest_substring` is a library extension to String that finds the longest sequence of same chars inside an array (substring).
It has methods to return the substring and its initial and final positions.

## Instructions

Run `bundle install` first.

## Installation

`require_relative "lib/longest_substring"`

## Usage

* String#longest_substring
```ruby
# returns largest substring of same chars
"Pressaaao".longest_substring
 => "aaa"
```

* String#longest_substring_positions
```ruby
# returns positions of largest substring
"Pressaaao".longest_substring_positions
 => [5,9]
```

## History

1. Simpler version: [HEAD](https://github.com/ijverig/longest_substring/blob/master/lib/longest_substring.rb)
2. Optimized and compact version: [optimizations branch](https://github.com/ijverig/longest_substring/tree/optimizations)

## Rationale

Take `Loop` as an example string.

1. String is transformed in array
```ruby
"Loop" => [ "L", "o", "o", "p" ]
```

2. Adjacent substrings of same char are generated
```ruby
[ ["L"], ["o", "o"], ["p"] ]
```

3. Next we select the largest one
```ruby
[ … ["o", "o"] … ]
```

4. Finally we find the positions of the substring in the original string
```ruby
substring = "oo"
positions = [1,3]
```
