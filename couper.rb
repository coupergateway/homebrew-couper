class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.7.2"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.7.2/couper-v1.7.2-macos-arm64.zip"
        sha256 "3a65476872d26af7c567400ac41646850f28b91e851dfef66332f7bf6934e144"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.2/couper-v1.7.2-macos-amd64.zip"
        sha256 "fe2420bbe744727d0bec5d7f72402606b91136f4537248eaf1b48568b323b15d"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.7.2/couper-v1.7.2-linux-arm64.tar.gz"
        sha256 "c0420d20502bf4edec1d938b5a703a354ccc4c6c8c63a220279e3ad322099fce"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.2/couper-v1.7.2-linux-amd64.tar.gz"
        sha256 "a88426c6b8c92403cd74d142df98192f733709c404cab08f95051fc6a024d0c0"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
