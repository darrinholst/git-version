GitVersion
==========
A rails engine that will add a `/version` route to your app to show the current git commit hash

Why
---
Almost every web application that I've been a part of has had the need for a version url which doesn't need to be as semantic as something like a gem.

I also wanted to play around with rails engines.

Prerequisites
-------------
- Rails > 3.1.0
- Using git for deployment

Installation
------------
Add the gem to your `Gemfile`:

```ruby
gem 'git-version'
```

Usage
-----
visit the version resource of your app

```
http://localhost:3000/version
```

