class Zmosh < Formula
  desc "Session persistence with auto-reconnect for terminal processes"
  homepage "https://github.com/mmonad/zmosh"
  version "0.5.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-macos-aarch64.tar.gz"
      sha256 "49f2255be12247264a02ea109c993e4e1c706dcad1768520be5045316f1886be"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-macos-x86_64.tar.gz"
      sha256 "cbad932c109cd979f8c9539913f8ba8f930777e0ad87a59984e8b01cbaebeaec"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-linux-aarch64.tar.gz"
      sha256 "86c962c7452d9d1478c2aedcba0985c972419e8e05c64cb5c4958d6de27a4042"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.2/zmosh-0.5.2-linux-x86_64.tar.gz"
      sha256 "70ea220e9b077cc6eba7b1a905f19bd303f1dd40f2ebf9d3519a1512c0b554a3"
    end
  end

  def install
    bin.install "zmosh"
  end

  test do
    system "#{bin}/zmosh", "--version"
  end
end
