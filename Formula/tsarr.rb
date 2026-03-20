class Tsarr < Formula
  desc "Type-safe TypeScript SDK and CLI for Servarr APIs"
  homepage "https://github.com/robbeverhelst/tsarr"
  version "2.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-arm64"
      sha256 "be52cb9418d27040cc61e64bb213679f603ac45fd991201a519bfa89f4cc7207"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-x64"
      sha256 "0d7bec7e294169e38318a523649b34408d092e99a17235765cc3fc90e96c40ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-arm64"
      sha256 "38be4ac05acfe1f441fe96bdf39cb6b2649a6f513d35c53c066af41fe83bd0f4"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-x64"
      sha256 "5caaf3102e84e4b8777ba57155e59cd0628ce79895732f94328ce536ed870d0b"
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
