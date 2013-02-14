# Windowtint

Windowtint sweats the details of enabling color (ANSI) output in Windows -- so you don't have to!

## Notice

This gem is still in development.  It's functional, but it hasn't been packaged yet.  (Release early and often,
you know!)

## Usage

When you `require 'windowtint'`, here's what it does:

1. Checks if it's running on Windows, and if not, returns immediately (because most other operating systems already
   support ANSI color output).
2. Checks the environment for ANSICON, and returns immediately if it's available.
3. Attempts to load win32console (including its standard output redirection), and returns if it's available.
4. Failing all that, warns the user that color output will not work properly until the ANSICON driver or the
   win32console gem are installed, then returns.

Your script then runs as usual.  If you have your own code that checks for ANSICON or tries to load win32console, you
don't need it anymore.  Windowtint's got your back!

To see which color support Windowtint was able to find, call `Windowtint.enabled`.  If it found something, it will
return `:ansicon`, `:win32console`, or `:non_windows` (those should be self-explanatory).  If not, it will return nil.
Thus if you only care about whether or not it's safe to output color, you can treat it like a Boolean.

## FAQ (frequently anticipated questions)

### What if I don't want to declare a dependency on win32console in my gemspec?

You don't have to.  That's why Windowtint is here!  (You still have to declare a dependency on Windowtint, of course,
but it's a very lightweight gem.)

### But what if I don't want to declare a dependency on Windowtint, either?

That's what makes free/open-source software great -- you can include it in your own project if you like.  Please refer
to the terms of the MIT License for details.

### Why not just tell everyone to use ANSICON and be done with it?

Because not everyone can use ANSICON.  ANSICON is a system-level driver that has to
be installed by hand alongside other Windows drivers.  Some environments (schools,
laboratories, etc.) have stringent usage policies that forbid users from tampering with
operating system files.

Windowtint allows your scripts to be agnostic about ANSI color support in Windows, freeing your users to choose which
color driver works best for them.

## Contributing

Windowtint's home is on GitHub (https://github.com/L2G/windowtint.git).  You can contribute work to it in the usual
GitHub way:

1. Fork it.
2. Create a feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request.

## Copyright and license

Windowtint is copyrighted software provided under the liberal terms of the MIT License; please see the file LICENSE.txt
for details.
