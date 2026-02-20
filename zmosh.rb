class Zmosh < Formula
  desc "Session persistence with auto-reconnect for terminal processes"
  homepage "https://github.com/mmonad/zmosh"
  version "0.4.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-macos-aarch64.tar.gz"
      sha256 "57ac09505b6b0dfa6eced6056f28e7b118f557fe9afa6ea1bd03c7a8808d237a"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-macos-x86_64.tar.gz"
      sha256 "f7f0cefad06ba919f1f7fe15eb9b73687b9acd02c2c8602095c2d1ac1180f221"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-linux-aarch64.tar.gz"
      sha256 "b26ea3fa121a014cde22506bbea140a924ec13ff95442ed9bde519dfd4aba476"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-linux-x86_64.tar.gz"
      sha256 "8235849dc7ea5faaf060727a62eb2f01fefc4a645ac3fa34a1c48ca9f378706c"
    end
  end

  def install
    bin.install "zmosh"
  end

  test do
    system "#{bin}/zmosh", "--version"
  end
end
