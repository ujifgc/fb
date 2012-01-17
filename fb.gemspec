# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fb/version"

spec = Gem::Specification.new do |s|
  s.name = "fb"
  s.version = Fb::VERSION
  s.date = "2011-08-08"
  s.summary = "Firebird and Interbase driver"
  s.requirements = "Firebird client library fbclient.dll, libfbclient.so or Firebird.framework."
  s.author = "Brent Rowland"
  s.email = "rowland@rowlandresearch.com"
  s.homepage = "http://github.com/rowland/fb"
  s.rubyforge_project = "fblib"
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options << '--title' << 'Fb -- Ruby Firebird Extension' << '--main' << 'README' << '-x' << 'test'
  s.rubyforge_project = "fb"

  s.platform = case RUBY_PLATFORM
    when /win32/ then Gem::Platform::WIN32
  else
    Gem::Platform::RUBY
  end

  s.extensions    = ['ext/fb/extconf.rb']
  s.files         = Dir.glob('{ext,lib}/**/*') + ['README']
  s.require_path  = 'lib'
end
