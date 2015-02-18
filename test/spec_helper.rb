if ENV['RUN_EXTRA_TASK'] == 'TRUE'
  require 'coveralls'
  Coveralls.wear!

  require 'simplecov'

  SimpleCov.formatter =
    SimpleCov::Formatter::MultiFormatter[SimpleCov::Formatter::HTMLFormatter,
                                         Coveralls::SimpleCov::Formatter]
  SimpleCov.start do
    add_filter 'test/'
  end
end

require 'minitest'
require 'minitest/autorun'
require 'dnsruby'
require_relative 'test_utils'


if RUBY_VERSION >= '2' && RUBY_PLATFORM != 'java'
  require 'pretty_backtrace'
  PrettyBacktrace.enable
end
