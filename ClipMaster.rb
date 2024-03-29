class Clipmaster < Formula
  desc "App to maintain the clipboard history for macOS"
  homepage "https://github.com/Mussabaheen/clipboard"
  url "https://github.com/Mussabaheen/ClipMaster/archive/refs/tags/0.0.6.tar.gz"
  sha256 "840a8ef5e4665c7e569269360f267bc3783a8a0a437d533ea7ee1be13d56ff59"
  license "MIT"

  depends_on "go" => :build

def install
    ENV["GO111MODULE"] = "auto"
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/clipMaster", "--version"
  end
end
