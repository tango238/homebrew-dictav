require 'formula'

class MRuby < Formula
  homepage 'http://www.mruby.org/'
  url 'https://github.com/mruby/mruby/tarball/master'
  head 'https://github.com/mruby/mruby.git', :branch => 'master'

  def install
    system "make install"
  end
end
