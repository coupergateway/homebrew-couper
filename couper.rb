class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.11.1"
    head "https://github.com/avenga/couper.git", branch: "master"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/avenga/couper/releases/download/v1.11.1/couper-v1.11.1-macos-arm64.zip"
        sha256 "1ef02f280a3fb36cb04b8b6075182c7e5b5db43fa11cda1c9fecd436ddaacd7c"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.1/couper-v1.11.1-macos-amd64.zip"
        sha256 "fee92f5505fa1a3684f188e97174451ec93ac6a58043a9eac218bd40315ff8df"

        def install
          bin.install "couper"
        end
      end
    end

    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/avenga/couper/releases/download/v1.11.1/couper-v1.11.1-linux-arm64.tar.gz"
        sha256 "23a5b48c690ae5b51a7d109dff2446a8e2169720b4784fcb97d1e3584af101bc"

        def install
          bin.install "couper"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/avenga/couper/releases/download/v1.11.1/couper-v1.11.1-linux-amd64.tar.gz"
        sha256 "5b936f3e3d2b5f5686b8d9dce81fd7a80aaa7127d8d23708d3c14200cc6ea7f9"

        def install
          bin.install "couper"
        end
      end
    end

    test do
      system "#{bin}/couper version"
    end
  end
