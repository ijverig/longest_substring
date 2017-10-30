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

## Rationale

It's an exhaustive solution:

Take `Voo` as an example string.

1. String is transformed in array
```ruby
`"Voo" => [ "V", "o", "o" ]`
```

2. All substrings are generated
```ruby
[ ["V"], ["o"], ["o"], ["V", "o"], ["o", "o"], ["V", "o", "o"] ]
```

3. Then we verify all substrings that are of the same char
```ruby
[ ["V"], ["o"], ["o"], ["V", "o"], ["o", "o"], ["V", "o", "o"] ]
    |      |      |        |           |              |
   true   true   true    false        true          false
```

4. Then we select substrings of the same char
```ruby
[ ["V"], ["o"], ["o"], ["o", "o"] ]
```

5. Next we select the largest one
```ruby
[ … ["o", "o"] … ]
```

6. Finally we find the positions of the substring in the original string
```ruby
substring = "oo"
positions = [1,3]
```
