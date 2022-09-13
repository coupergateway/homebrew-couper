class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.10.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.10.0/couper-v1.10.0-macos-arm64.zip"
        sha256 "89bd6c5b6f4922ea827bad47c9b29997953298fc4c91c6e156d29b52a020949e"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.10.0/couper-v1.10.0-macos-amd64.zip"
        sha256 "822ad7d940665e77633884bbc62b6069161c5f438b99d0fdd85cc9ec3ba64139"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.10.0/couper-v1.10.0-linux-arm64.tar.gz"
        sha256 "45d022ba55ef7f0d657358db1b162947f571243e6aa932affdb72017eb02c05b"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.10.0/couper-v1.10.0-linux-amd64.tar.gz"
        sha256 "09f464918d871e002a524c0c2b55ed9bc615b6fbc36928b0621b7067b42343c5"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
