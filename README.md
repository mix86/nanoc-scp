nanoc-scp
===========

Very simple deploy script for [nanoc](http://nanoc.ws), that uses only scp.

Installation
------------

Add this line to your application's Gemfile:

```bash
gem 'nanoc-scp'
```

And then run:

```bash
bundle
```

Or install it yourself with:

```bash
gem install nanoc-scp
```

Usage
-----

Put to your nanoc config something like this

```yaml
deploy:
  default:
    kind: scp
    dst:  "yourname@sftp.domain.org:/public_html"
    options:
      - "-i ~/.ssh/aws.pem"
```

and run

```
nanoc deploy
```

Enjoy!
