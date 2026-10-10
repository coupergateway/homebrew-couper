class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.14.4"
    url "https://github.com/coupergateway/couper/archive/refs/tags/v1.14.4.tar.gz"
    sha256 "6a3fe21894345116cd58a8841dcba37083d64e53e8dbba23d6b18310cec78f0c"
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
        -X github.com/coupergateway/couper/utils.BuildName=d323020
        -X github.com/coupergateway/couper/utils.BuildDate=#{build_time_str}
      ]
      system "go", "build", *std_go_args(ldflags:)
    end

    test do
      system bin/"couper", "version"
    end
  end
