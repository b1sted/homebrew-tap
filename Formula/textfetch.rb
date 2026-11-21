class Textfetch < Formula
  desc "Minimal, fast system information tool for UNIX systems"
  homepage "https://github.com/b1sted/textfetch"
  url "https://github.com/b1sted/textfetch/archive/refs/tags/v1.2.3.tar.gz"
  sha256 "78da22ec8697fcd3937e791ac60d1f3d04921e6af1fc89fdfd855928c3af9654"
  license "MIT"

  def install
    system "make", "VERSION=#{version}"
    bin.install "bin/textfetch"
  end

  test do
    assert_match "textfetch v#{version}", shell_output("#{bin}/textfetch -V")

    output = shell_output(bin/"textfetch")
    assert_match "OS: ", output
    assert_match "Kernel: ", output
  end
end
