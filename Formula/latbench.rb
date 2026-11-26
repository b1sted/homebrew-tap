class Latbench < Formula
  desc "CPU, cache, TLB, DRAM, and OS latency microbenchmarks"
  homepage "https://github.com/b1sted/latbench"
  url "https://github.com/b1sted/latbench/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ffcc658ead9fa4995fe50d3c5a5ac678c3b9083d2ab1101bef06cbd4ff4ca23f"
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
