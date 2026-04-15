class Tsarr < Formula
  desc "Type-safe TypeScript SDK and CLI for Servarr APIs"
  homepage "https://github.com/robbeverhelst/tsarr"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-arm64"
      sha256 "e4ef936af67ab921c7b9e0b46d38681b464b4c549177100ba1ecbc2fd2892800"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-darwin-x64"
      sha256 "8509fbec42f68c4c34a053be46c98d2cc3c630d0f62f71b12882211fa771b87b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-arm64"
      sha256 "3537ea0905ebd6e9a42efe38c60c43232ad4fc9c7a8ae395ac7f7888901248e4"
    else
      url "https://github.com/robbeverhelst/tsarr/releases/download/v#{version}/tsarr-linux-x64"
      sha256 "9ad9885e5914f74743bbc25c043f53ea6a5cfb73e9ec48b69742f2026bbbb7d5"
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
