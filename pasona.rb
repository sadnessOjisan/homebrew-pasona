# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Pasona < Formula
    desc "パーソナルカラー診断をできるCLI"
    homepage "https://github.com/sadnessOjisan/pasona"
    url "https://github.com/sadnessOjisan/pasona/releases/latest/download/pasona-x86_64-apple-darwin.zip"
    version "v1.0.0"
    sha256 "fc201aba50449553c76cf1dc7aaf577d0901116eb4ca3e778c75e0ccd399aa0a"
    license "MIT"
    # depends_on "cmake" => :build
    def install
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
      unzip pasona-x86_64-apple-darwin.zip
      ls
      bin.install "pasona" # ←実行ファイルを実行Pathに配置するよの意味
    end
  
    test do
      # `test do` will create, run in and delete a temporary directory.
      #
      # This test will fail and we won't accept that! For Homebrew/homebrew-core
      # this will need to be a test that verifies the functionality of the
      # software. Run the test with `brew test pasona`. Options passed
      # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
      #
      # The installed folder is not in the path, so use the entire path to any
      # executables being tested: `system "#{bin}/program", "do", "something"`.
      system "true"
    end
  end
  