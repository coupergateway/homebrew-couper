class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.13.0"
    head "https://github.com/coupergateway/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.0/couper-v1.13.0-macos-arm64.zip"
        sha256 "d993b6d55b196e280e4facd71f1ef093f3e08681f541da38f501d005f5167c1d"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.0/couper-v1.13.0-macos-amd64.zip"
        sha256 "588ccc077ce23aaf42b59f4c2d546275a340b615c370144fd4d134ca0f42f0c8"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.0/couper-v1.13.0-linux-arm64.tar.gz"
        sha256 ""

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.13.0/couper-v1.13.0-linux-amd64.tar.gz"
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
