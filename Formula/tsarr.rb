class Tsarr < Formula
  desc "Type-safe TypeScript SDK and CLI for Servarr APIs"
  homepage "https://github.com/robbeverhelst/tsarr"
  version "2.16.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-arm64"
      sha256 "1624cda0b8f52977e5748417865d5c728867dd66eabc5dac7b7fb955f6365129"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-x64"
      sha256 "9853eb201308bc8b96fec14ef6fd8a0c13c06ae6661ef1106488cece6f7eabb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-arm64"
      sha256 "65d72d6c9f4d8add87df213e3bcfeda44ef9a62b7ea4ec31881c7ba141d82cea"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-x64"
      sha256 "eb9cd7ad35758bf350486ffd2a5401f4a2b7a04218ca8bccc5327beedd769fb2"
    end
  end

  def install
    binary = Dir["tsarr-*"].first || "tsarr"
    bin.install binary => "tsarr"
  end

  test do
    assert_match "tsarr", shell_output("#{bin}/tsarr --help")
  end
end
