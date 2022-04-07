class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.8.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.8.1/couper-v1.8.1-macos-arm64.zip"
        sha256 "2145cbb32ea66e81606feccdf5e45ac8c2d594d302a04a105a00e44428ace779"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.8.1/couper-v1.8.1-macos-amd64.zip"
        sha256 "b9e6b90702ed56c575cd56cb1790afba65f41b7d92349d0e48bb9d760fb3ed93"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.8.1/couper-v1.8.1-linux-arm64.tar.gz"
        sha256 "4a7c4c68cbff78d6128940c4086ba2050b19d0447c9e59ae32fb032c5555d501"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.8.1/couper-v1.8.1-linux-amd64.tar.gz"
        sha256 "91b2034fe7f2e086e7549d574027370ffbbcdfd63a7dcbcd7c6e3a5efe37eab6"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
