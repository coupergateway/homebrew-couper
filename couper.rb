class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.13.1"
    head "https://github.com/coupergateway/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.1/couper-v1.13.1-macos-arm64.zip"
        sha256 "0fa2d1efeeacc8f6f970d1e4d72b25e97078f9e6c83a8cc117cad52cf55eeca0"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.1/couper-v1.13.1-macos-amd64.zip"
        sha256 "f93aee72b66ba095ef1f9ca717d7bdfbb4f974eec4224f7392ebcc8581bcb60e"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.1/couper-v1.13.1-linux-arm64.tar.gz"
        sha256 ""

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.1/couper-v1.13.1-linux-amd64.tar.gz"
        sha256 ""

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
