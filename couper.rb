class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.11.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.11.0/couper-v1.11.0-macos-arm64.zip"
        sha256 "92c793d8cd25a0ede0c0f8862f165cbaf4ba874e43fad4cbaba9b6ef6d2fb233"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.0/couper-v1.11.0-macos-amd64.zip"
        sha256 "fca054ab3e225f6bde638e644f99de2b4cda3042e29ebb785d50a7c875f10cc1"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.11.0/couper-v1.11.0-linux-arm64.tar.gz"
        sha256 "99d2c4d2f31147bd118fabcb2c0f1ee8f215c66f572a8cbb6cf6d2de7e069805"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.0/couper-v1.11.0-linux-amd64.tar.gz"
        sha256 "1c7ae838ece6084cf1c6d2dcc8e930eefb1cc059f8458cc3431b4d072224e698"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
