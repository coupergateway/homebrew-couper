class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.12.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.12.1/couper-v1.12.1-macos-arm64.zip"
        sha256 "46ceb086808ed3cfa06d6af9f7eb5147219a6aa4a4fda714eaed9ef1f6caaabc"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.12.1/couper-v1.12.1-macos-amd64.zip"
        sha256 "793d998f3ebd4d75ff4a4dab7e8562941cf191e0af80acd0cd1e4844ce3ae212"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.12.1/couper-v1.12.1-linux-arm64.tar.gz"
        sha256 "a8a1ad3cd3b35092965d709ab5d20ac67c613c159dee27abb6e6efdfa8e8116f"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.12.1/couper-v1.12.1-linux-amd64.tar.gz"
        sha256 "f799f100e99a4ed2a3aadf570671874c0f6348a7ed994b97c90a01f120a5b78d"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
