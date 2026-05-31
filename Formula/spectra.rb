class Spectra < Formula
  desc "Cryptographic asset discovery and quantum risk analysis tool"
  homepage "https://spectra.tools"
  url "https://github.com/HarshalPatel1972/spectra/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Dummy hash for now
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/spectra"
  end

  test do
    system "#{bin}/spectra", "--help"
  end
end
