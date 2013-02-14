require "windowtint/version"

module Windowtint
  class << self

    attr_reader :enabled

    def go
      if windows?
        if ENV['ANSICON']
          @enabled = :ansicon
        else
          begin
            require 'Win32/Console/ANSI'
            @enabled = :win32console

          rescue LoadError
            warn "Color output on Windows is supported with:\n" +
                 "* win32console (Ruby gem) - OR -\n" +
                 "* ANSICON 1.31 or later (https://github.com/adoxa/ansicon)\n" +
                 "Neither could be found on your system.\n"

          end
        end

      else  # windows? returned false
        @enabled = :non_windows
      end
    end

    private

    def windows?
      /mingw|mswin/ === RUBY_PLATFORM
    end

  end
end

Windowtint.go

# vim:ts=2:sw=2:et:ai:
