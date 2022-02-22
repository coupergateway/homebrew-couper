class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.7.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.7.1/couper-v1.7.1-macos-arm64.zip"
        sha256 "f4aba245dea2d7c730db64abcf82b41ecafe1b4f559c444d7adb1c5c2c314fab"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.1/couper-v1.7.1-macos-amd64.zip"
        sha256 "086b2a141cb85a799eed1158a085f61b1f355a6d4dda263be5d5dccbe746e376"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.7.1/couper-v1.7.1-linux-arm64.zip"
        sha256 "4656d67ae24c89a1382e0bc3437e43fa3774e65015f11024f25f09ba54f5a2e9"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.1/couper-v1.7.1-linux-amd64.zip"
        sha256 "e9ddbc52dadf24a244707d3439960cb72eea345a3eddb9b8f2ef5ee0f5a576d1"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
