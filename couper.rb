class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.12.2"
    head "https://github.com/coupergateway/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/coupergateway/couper/releases/download/v1.12.2/couper-v1.12.2-macos-arm64.zip"
        sha256 "b9b53481e471da2ad03d9fdd48f2b2cca03ed241361597f1cba6eeb8c2c87641"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.12.2/couper-v1.12.2-macos-amd64.zip"
        sha256 "a68dd55085da65044ffd1e260547d0f2e1d250282e9cd293e91a2f4ff3d440c2"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/coupergateway/couper/releases/download/v1.12.2/couper-v1.12.2-linux-arm64.tar.gz"
        sha256 "b60d17de538ab91e42d531036ee560fc159d62d1571396b60eaa2c106a371dc7"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/coupergateway/couper/releases/download/v1.12.2/couper-v1.12.2-linux-amd64.tar.gz"
        sha256 "26ba1abbc194cf713f267a51eed8229287be2e2dc1b41105ffa701f2cd093080"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
