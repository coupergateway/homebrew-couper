class Couper < Formula
    desc "Couper is a lightweight open source API gateway designed to support developers in building and running API-driven Web projects."
    homepage "https://couper.io/"
    license "MIT"
    version "v1.14.7"
    url "https://github.com/coupergateway/couper/archive/refs/tags/v1.14.7.tar.gz"
    sha256 "1ee1cb75d6f80697996750532c6f33ebc3257227368c2327dab90e43ec2e424e"
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
        -X github.com/coupergateway/couper/utils.BuildName=2a5d107
        -X github.com/coupergateway/couper/utils.BuildDate=#{build_time_str}
      ]
      system "go", "build", *std_go_args(ldflags:)
    end

    test do
      system bin/"couper", "version"
    end
  end
