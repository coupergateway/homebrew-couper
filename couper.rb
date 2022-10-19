class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.10.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.10.1/couper-v1.10.1-macos-arm64.zip"
        sha256 "a6fdbeab3cecdb37a741a7fbbf19919f96d57b7f71f40eba30f1b27a3837b351"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.10.1/couper-v1.10.1-macos-amd64.zip"
        sha256 "e27ab3c7eb346c4c6a309b89fcdf1dc5361b568b6c37a10b81f4d393696e28c5"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.10.1/couper-v1.10.1-linux-arm64.tar.gz"
        sha256 "de5291fd3e8bf629cfcb37a2d333dda116f1c172057b113be89e5d4934b67382"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.10.1/couper-v1.10.1-linux-amd64.tar.gz"
        sha256 "fe29ebc26c8fe4dd1e6d7d3f5b0fdab818c5db7be1144468e3460f16a90e74a7"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
