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
#         sha256 "123"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-macos-amd64.zip"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-linux-arm64.zip"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/1.6/couper-1.6-linux-amd64.zip"

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
