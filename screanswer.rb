# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Screanswer < Formula
  desc "screanswer is a command line tool to answer text on the screen."
  homepage ""
  version "1.1.0"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/rai62/screanswer/releases/download/v1.1.0/screanswer_Darwin_x86_64.tar.gz"
    sha256 "bb7258f030932cb56cd082389f84cd92b54a9a01d806426625c5150c49c62e5a"

    def install
      bin.install "screanswer"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/rai62/screanswer/releases/download/v1.1.0/screanswer_Darwin_arm64.tar.gz"
    sha256 "c5f23e1d2f90b9c992857e1946220144f85b7f12702c980f280edd818aea4c4c"

    def install
      bin.install "screanswer"
    end
  end

  test do
    system "#{bin}/screanswer", "--version"
  end
end
