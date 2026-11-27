class Latbench < Formula
  desc "CPU, cache, TLB, DRAM, and OS latency microbenchmarks"
  homepage "https://github.com/b1sted/latbench"
  url "https://github.com/b1sted/latbench/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "191e3a391b8fe2a85c6ec1e0a285343c78bdb52675e06e430392d6a2b97ef1e6"
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
