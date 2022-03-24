class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.8.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.8.0/couper-v1.8.0-macos-arm64.zip"
        sha256 "de663b3be8efbdaf02038775ee229c9f51448f4e50cf85d3ba624312b0894f55"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.8.0/couper-v1.8.0-macos-amd64.zip"
        sha256 "6d3258ff0ce8ac21449f787d3fa48cc54918522f03ee6ad22c4f1ba6a6f0af34"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.8.0/couper-v1.8.0-linux-arm64.tar.gz"
        sha256 "799d2a694b8cedd64a28d0b5f47dc9bd43cd3c69ef71052e07e5caee7ca34530"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.8.0/couper-v1.8.0-linux-amd64.tar.gz"
        sha256 "a654eee41dba592451de3239ce4ab75aa31c9dff622fb9e54a4a014b7abf55c1"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
