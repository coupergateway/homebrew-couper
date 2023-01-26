class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.11.2"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.11.2/couper-v1.11.2-macos-arm64.zip"
        sha256 "f77e66e6b84b5b3aec27b432a7c08b6060f784ecfe40838887bce38d07926b3b"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.2/couper-v1.11.2-macos-amd64.zip"
        sha256 "0dd69a22384fd8e0028274a349892f0b59be69fa9954add70c3e657f3a368cd6"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.11.2/couper-v1.11.2-linux-arm64.tar.gz"
        sha256 "14cbf6cf74baf3dc1bdd626abed6f125fd26a708bcdd73a60058dccc99f948f7"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.2/couper-v1.11.2-linux-amd64.tar.gz"
        sha256 "6c65d8f039cdf914db263326d8aabed249afc393922c237324e484337c8ce6e8"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
