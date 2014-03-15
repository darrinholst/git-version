GitVersion
==========
A rails engine that will add a `/version` route to your app to show the current git commit hash

Why
---
Almost every web application that I've been a part of has had the need for a version url which doesn't need to be as semantic as something like a gem. It could be used as a ping url or to check to make sure your deploy actually deployed the code you think it did.

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

Heroku
------
If deploying to heroku you'll need to add the following step:
```
rails generate git_version:install
```
This will install a `config/version.txt` file and a `.gitattributes` file so that the version gets expanded in version.txt on checkout. The reason this is needed is that Heroku no longer provides a commit hash environment variable nor does it keep the git repo around in your slug so we resort to this trickery.

Usage
-----
visit the version resource of your app

```
http://localhost:3000/version
```

