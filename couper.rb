class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.6.0"
    head "https://github.com/avenga/couper.git", branch: "main"

    #depends_on "go" => :build

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-macos-arm64.zip"
        sha256 "e9bc68fc735aab0cbf0eda21264e0ae3908e28679af0e38a711df117c01e3df8"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-macos-amd64.zip"
        sha256 "3e85f2c55166d8904f3f12de8855169f1c9aa7eeff85557428010a17f4afc390"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-linux-arm64.zip"
        sha256 "cfd150a704eb36625c92a3286849a623efdd316c0d82bd105241ce65eb85260b"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-linux-amd64.zip"
        sha256 "786f0e7935c01fbfe8f12577750028a87a1de4236d0cb0ee72280ec6a0157cc4"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end

# def install
#     ENV["CGO_ENABLED"] = "1"
#
#     system "go", "build", *std_go_args, "-ldflags", "-s -w"
# end
