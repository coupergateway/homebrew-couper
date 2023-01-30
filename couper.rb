class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.12.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.12.0/couper-v1.12.0-macos-arm64.zip"
        sha256 "a867296c648ae15d3cddb6299b924c1b6e5773b1d882339c1067f4b620ed2611"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.12.0/couper-v1.12.0-macos-amd64.zip"
        sha256 "c57c5e7482af6f3850f4006400fb5b359cd0fa7b71c03f57e549753c0002c43b"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.12.0/couper-v1.12.0-linux-arm64.tar.gz"
        sha256 "2f793e45c2084a246a4b37f8b9788fcffc5705ef26013cdb7f75fd315fa3fb97"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.12.0/couper-v1.12.0-linux-amd64.tar.gz"
        sha256 "f928de721785d8f7facdb64830696d5facbbfe2228566a1871067545ac83d527"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
