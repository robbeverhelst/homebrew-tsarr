class Tsarr < Formula
  desc "Type-safe TypeScript SDK and CLI for Servarr APIs"
  homepage "https://github.com/robbeverhelst/tsarr"
  version "2.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-arm64"
      sha256 "f8f4ed141670de68035a735a1652a97d602712c805a6002a78f495b3f81eb743"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-x64"
      sha256 "edb9647b4536fbd1bb978e27e64e7e4fec23e165391230811d232b6e218a8cb0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-arm64"
      sha256 "e74952a8423e18342783a27b10b989eb0b196618c1c5285e28a60eb397799800"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-x64"
      sha256 "af70c17401e04b01db8f79ca0573ddba9c9cb3b23dc0bc48f48c3df3ff10f815"
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
