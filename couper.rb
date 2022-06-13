class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.9.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.9.1/couper-v1.9.1-macos-arm64.zip"
        sha256 "57f710e9cead9b067fd7fd36a45b34772ae75c0262d0a0a8f4431e4fd046d283"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.1/couper-v1.9.1-macos-amd64.zip"
        sha256 "899814873e1f306ca96f30452cae9b99f0cb36138ec17d28b1c9731f8534e89f"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.9.1/couper-v1.9.1-linux-arm64.tar.gz"
        sha256 "2d0c0f3a43be0cb3c244884169c529644977632af9bd2df060aeadc183271561"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.9.1/couper-v1.9.1-linux-amd64.tar.gz"
        sha256 "1110bac4d89acd3b6eec7f3fdd1512ca6cb16039643f3e5a5039fe847f0bee18"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
