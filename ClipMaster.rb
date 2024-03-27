class Clipmaster < Formula
  desc "App to maintain the clipboard history for macOS"
  homepage ""
  url "https://github.com/Mussabaheen/clipboard/archive/refs/tags/0.0.4.tar.gz"
  sha256 "e5de94715e90547051aefa5de555810e7d3634827036ddfebdbb458fd08f4c22"
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
