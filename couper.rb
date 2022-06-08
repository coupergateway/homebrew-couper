class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.9.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.9.0/couper-v1.9.0-macos-arm64.zip"
        sha256 "3d6f4f6f938e0a154d3456bbc087c19958f0bc001045b187a8cd6e8dcd6a18ca"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.0/couper-v1.9.0-macos-amd64.zip"
        sha256 "b179e8c57d4ed8414033db473729ef15e4faaf203ec0377216904903b5979d4f"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.9.0/couper-v1.9.0-linux-arm64.tar.gz"
        sha256 "bf41e9b615c14c4c6d3dde34a4beb25d70cd764104784474bcf5c47a730345ae"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.0/couper-v1.9.0-linux-amd64.tar.gz"
        sha256 "a37b1bc36c185dd677f2995e09398fbff160a0469a5e90397d00757350127329"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
