class Zmosh < Formula
  desc "Session persistence with auto-reconnect for terminal processes"
  homepage "https://github.com/mmonad/zmosh"
  version "0.5.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-macos-aarch64.tar.gz"
      sha256 "891f4960118e339ffbb80b0e98b11a432bdae2ac362c965e1e7662668936a9bf"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-macos-x86_64.tar.gz"
      sha256 "4c8050166bb2b9ef33a6b33e53c965d7b5d4b2105542df289b3f00684def9ace"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-linux-aarch64.tar.gz"
      sha256 "877af8aad81d6413393a203866ffa65fa3d22147845f419e27fbc9bc1f3fecda"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-linux-x86_64.tar.gz"
      sha256 "276efcadc56efe32ad78b1e9345f96b210055f87c3d11bfe9252bc9275251774"
    end
  end

  def install
    bin.install "zmosh"
  end

  test do
    system "#{bin}/zmosh", "--version"
  end
end
