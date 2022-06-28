class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.9.2"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.9.2/couper-v1.9.2-macos-arm64.zip"
        sha256 "a551c20d4102d83b8238f70b2aa1665a7f4b1cd15b38150689bc510bf422e001"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.2/couper-v1.9.2-macos-amd64.zip"
        sha256 "aecdcdeff8a23b55cdef7cf15bd8a91679237d394cef5b567a81cb4b73d8529f"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.9.2/couper-v1.9.2-linux-arm64.tar.gz"
        sha256 "65945144b28c411dc3cd14cb6706783a35b8dfae8520af1daa6edd0227e7ddb7"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.2/couper-v1.9.2-linux-amd64.tar.gz"
        sha256 "0e7a14566523016d041c3cc7b8f69d7a544c2faed676cfa437ab369031dee952"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
