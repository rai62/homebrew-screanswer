# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Screanswer < Formula
  desc "screanswer is a command line tool to answer text on the screen."
  homepage ""
  version "1.0.0"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rai62/screanswer/releases/download/v1.0.0/screanswer_Darwin_arm64.tar.gz"
      sha256 "e8dad05275a81f12cc83ef8f693525fe797184a672aa39f6b7991cc09f52a278"

      def install
        bin.install "screanswer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rai62/screanswer/releases/download/v1.0.0/screanswer_Darwin_x86_64.tar.gz"
      sha256 "abb19e2f03f59bcc5612430bbfa367452c747450e111512642fc9a6394bd64a1"

      def install
        bin.install "screanswer"
      end
    end
  end

  test do
    system "#{bin}/screanswer", "--version"
  end
end
