class Tsarr < Formula
  desc "Type-safe TypeScript SDK and CLI for Servarr APIs"
  homepage "https://github.com/robbeverhelst/tsarr"
  version "2.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-arm64"
      sha256 "21c0bc52aea5977ac0ae81f735f7493ef1ea1a9cf4371d3657b918a33feec1e2"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-x64"
      sha256 "c84eb8ffd4f19f29a97eaebc22917d9b2193c149d39f6625eb02f9146d81188b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-arm64"
      sha256 "c0f2cc0121ae65b3f7391ad5ee282e1bedf6c17ce4cea35ece40d63bb947da8f"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-x64"
      sha256 "0c2f697a0d2eb9d921afa035e42ef7cfa61f50a10fa0635e72e9bf7ebecda68c"
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
