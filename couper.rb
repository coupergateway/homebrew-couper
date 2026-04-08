class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.14.1"
    url "https://github.com/coupergateway/couper/archive/refs/tags/v1.14.1.tar.gz"
    sha256 "c5cf131c43e1310839a590a87c1b5c506d49e4f735e28b1713dce22a012d9f6b"
    head "https://github.com/coupergateway/couper.git", branch: "main"

    depends_on "go" => :build

    def install
      build_time_str =
        if ENV["SOURCE_DATE_EPOCH"]
          Time.at(ENV["SOURCE_DATE_EPOCH"].to_i).utc.strftime("%F")
        else
          Time.now.utc.strftime("%F")
        end
      ldflags = %W[
        -X github.com/coupergateway/couper/utils.VersionName=#{version}
        -X github.com/coupergateway/couper/utils.BuildName=1574b95
        -X github.com/coupergateway/couper/utils.BuildDate=#{build_time_str}
      ]
      system "go", "build", *std_go_args(ldflags:)
    end

    test do
      system bin/"couper", "version"
    end
  end
