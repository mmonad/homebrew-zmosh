class Zmosh < Formula
  desc "Session persistence with auto-reconnect for terminal processes"
  homepage "https://github.com/mmonad/zmosh"
  version "0.4.0"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-macos-aarch64.tar.gz"
      sha256 "REPLACE_WITH_MACOS_ARM64_SHA256"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.4.0/zmosh-0.4.0-macos-x86_64.tar.gz"
      sha256 "REPLACE_WITH_MACOS_INTEL_SHA256"
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
