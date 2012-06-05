require 'formula'

class Mruby < Formula
  homepage 'http://www.mruby.org/'
  url 'https://github.com/mruby/mruby/tarball/master'
  version '0'
  md5 'b6d6655b4ef58888541b9ea9f1dd5761'

  # depends_on 'cmake' => :build

  def install
    # system "cmake . #{std_cmake_parameters}"
    system "make"
    system "cp -r {bin,include,lib} #{prefix}"
  end

  def test
  end
end
