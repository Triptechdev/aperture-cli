class Aperture < Formula
  desc "CLI tool for deploying web apps as native applications"
  homepage "https://triptech.dev/aperture"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_AARCH64_MACOS_SHA256"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-x86_64-apple-darwin.tar.gz"
    sha256 "PLACEHOLDER_X86_64_MACOS_SHA256"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_AARCH64_LINUX_SHA256"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "PLACEHOLDER_X86_64_LINUX_SHA256"
  end

  def install
    bin.install "aperture"

    # Generate shell completions
    generate_completions_from_executable(bin/"aperture", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aperture --version")
  end
end
