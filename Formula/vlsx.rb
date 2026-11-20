class Vlsx < Formula
  desc "A lightweight terminal toolkit in C for network engineers"
  homepage "https://github.com/b1sted/vlsx"
  version "0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/b1sted/vlsx/releases/download/v0.1/vlsx-macos-arm64.tar.gz"
      sha256 "0fb6ad954745964ff081309a519a632398a79b9277d2a38a49a300ffc76b8824"
    end

    on_intel do
      url "https://github.com/b1sted/vlsx/releases/download/v0.1/vlsx-macos-intel-modern.tar.gz"
      sha256 "ae41cce3658950347cdb2a6463908b4f8084d2a9af81eb7a28233b64e0cbfd41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/b1sted/vlsx/releases/download/v0.1/vlsx-linux-arm64.tar.gz"
      sha256 "f0778e4aa36767b045fcbeef05a7d7a29a277c3f8ea9eb646e36a49552e0475a"
    end

    on_intel do
      url "https://github.com/b1sted/vlsx/releases/download/v0.1/vlsx-linux-amd64.tar.gz"
      sha256 "8b388014bbd3307106337f7be80b74a319f38529eabe253eb2c7e783c46a0c92"
    end
  end

  def install
    bin.install "vlsx"
  end

  test do
    system "#{bin}/vlsx", "-v"
  end
end
