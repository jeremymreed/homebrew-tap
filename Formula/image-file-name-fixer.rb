class ImageFileNameFixer < Formula
  desc "Normalize image file names to standard naming scheme"
  homepage "https://github.com/jeremymreed/image-file-name-fixer"
  url "https://github.com/jeremymreed/image-file-name-fixer/archive/refs/tags/v0.0.9.tar.gz"
  version "0.0.9"
  sha256 "0c8d346b33c500322cdfc1dbe5652e106a4fc8df66e5757e6a5b87157b4ff63c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test image-file-name-fixer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
