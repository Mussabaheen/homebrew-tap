class Clipmaster < Formula
  desc "App to maintain the clipboard history for macOS"
  homepage "https://github.com/Mussabaheen/clipboard"
  url "https://github.com/Mussabaheen/ClipMaster/archive/refs/tags/0.0.5.tar.gz"
  sha256 "41fdc7d1a19b4a8bcb848169c1577dc692e7cb5af88ddd7da55872982592d4bb"
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
