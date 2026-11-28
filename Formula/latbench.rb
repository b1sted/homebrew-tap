class Latbench < Formula
  desc "CPU, cache, TLB, DRAM, and OS latency microbenchmarks"
  homepage "https://github.com/b1sted/latbench"
  url "https://github.com/b1sted/latbench/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "1ab46d6e8fe1175cd6d314aa8aef6698c828555ac176f2d645552b06ab3ef942"
  license "GPL-3.0"

  def install
    system "make", "VERSION=#{version}"
    bin.install "build/bin/latbench"
  end

  test do
    assert_match "latbench v#{version}", shell_output("#{bin}/latbench -V")

    output = shell_output(bin/"latbench sys info")
    assert_match "Architecture", output
    assert_match "Page size", output
  end
end
