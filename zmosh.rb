class Zmosh < Formula
  desc "Session persistence with auto-reconnect for terminal processes"
  homepage "https://github.com/mmonad/zmosh"
  version "0.5.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.1/zmosh-0.5.1-macos-aarch64.tar.gz"
      sha256 "eb8e08183fb291762f11a5abfb183705000f68bf66d0aa57566580879e839266"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.1/zmosh-0.5.1-macos-x86_64.tar.gz"
      sha256 "8f17a2448fcc216252f20e35fe4606c31b90c0f71fb246f5269dc132569ccc63"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.1/zmosh-0.5.1-linux-aarch64.tar.gz"
      sha256 "cab29d242557b31752df976619f8812d569e2ec10fdc6d3c1e0978064fa63ab9"
    else
      url "https://github.com/mmonad/zmosh/releases/download/v0.5.1/zmosh-0.5.1-linux-x86_64.tar.gz"
      sha256 "d1515398eb874f73ac9d251da20f005f9b7dd744f7565eb15ca28d6436221948"
    end
  end

  def install
    bin.install "zmosh"
  end

  test do
    system "#{bin}/zmosh", "--version"
  end
end
