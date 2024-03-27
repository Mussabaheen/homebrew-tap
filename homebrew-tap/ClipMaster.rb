class Clipmaster < Formula
  desc "App to maintain the clipboard history for macOS"
  homepage ""
  url "https://github.com/Mussabaheen/clipboard/archive/refs/tags/0.0.4.tar.gz"
  sha256 "29aeb7d3d613c5c604b5e95426810e1fad4527cdc478e4215b502863a9bd1f2f"
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
