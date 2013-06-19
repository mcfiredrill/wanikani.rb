# wanikani.rb

* http://github.com/mcfiredrill/wanikani.rb

## DESCRIPTION:

very simple wrapper around wanikani's api. (http://www.wanikani.com)

## SYNOPSIS:

You'll need your user api key, get it from http://www.wanikani.com/api

```
require 'wanikani'

w = WaniKani.new "68eba5773589a3d132c06f77706f647f"
w.user_information
```

## REQUIREMENTS: 
a wanikani account

## INSTALL:

gem install wanikani

## DEVELOPERS:

Bundle:

$ bundle

Run all the tests:

$ bundle exec rake


== LICENSE:

(The MIT License)

Copyright (c) 2013

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
