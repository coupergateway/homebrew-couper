class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.13.2"
    head "https://github.com/coupergateway/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.2/couper-v1.13.2-macos-arm64.zip"
        sha256 "ab0f320d491a29eb9e1ff4e7ace0415d3b216f68e77eddb54ebccea03411c094"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.2/couper-v1.13.2-macos-amd64.zip"
        sha256 "4de6a3a7c401009265c297e842393d09ad4ffcb104543e50b0bd91a587b03177"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.2/couper-v1.13.2-linux-arm64.tar.gz"
        sha256 ""

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.2/couper-v1.13.2-linux-amd64.tar.gz"
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
