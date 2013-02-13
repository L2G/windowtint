# Windowtint

Windowtint deals with dependencies for enabling color (ANSI) output in Windows --
so you don't have to!

## Notice

This gem is still in development and not functional yet!!

## Installation

Add this line to your application's Gemfile:

    gem 'windowtint'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install windowtint

## Usage

When you `require 'windowtint'`, here's what it does:

1. Checks if it's running on Windows, and if not, returns immediately (since Windowtint applies only to Windows).
2. Checks the environment for ANSICON, and returns immediately if it's available.
3. Attempts to load win32console (including its standard output redirection), and returns if it's available.
4. If both fail, warns the user that color output will not work properly until the ANSICON driver or the win32console
   gem are installed, then returns.

Your script then runs as usual.  Any code you already have that checks for ANSICON or tries to load win32console
can be removed.  Windowtint's got your back!

## FAQ

### Why not just tell everyone to use ANSICON and be done with it?

Because not everyone can use ANSICON.  ANSICON is a system-level driver that has to
be installed by hand alongside other Windows drivers.  Some environments (schools,
laboratories, etc.) have stringent usage policies that forbid users tampering with
operating system files.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
