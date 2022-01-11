class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.7.0"
    head "https://github.com/avenga/couper.git", branch: "master"

    #depends_on "go" => :build

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.7.0/couper-v1.7.0-macos-arm64.zip"
        sha256 "47f283b547af22f83c891099f827d5127e67e2def0f54fdd16cce0d3039ab0fe"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.0/couper-v1.7.0-macos-amd64.zip"
        sha256 "4d6192fe38714b29e5d43f2527604f5f2cd94fea978dc5006833b1fda277f436"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.7.0/couper-v1.7.0-linux-arm64.tar.gz"
        sha256 "3090fd2ddf9d06f88533e9f23494e95dc9c11afde93a1a5348c07080015a0a84"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.7.0/couper-v1.7.0-linux-amd64.tar.gz"
        sha256 "22e5c961a78fa86cd400804837aabef6736a54d487a4ab513104c490b06b0d21"

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
