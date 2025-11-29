class Aperture < Formula
  desc "CLI tool for deploying web apps as native applications"
  homepage "https://triptech.dev/aperture"
  version "0.1.0"

  if OS.mac?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-universal-apple-darwin.tar.gz"
    sha256 "b409c2d33c8be83e02d8f72da0f840502b801c953568f979cff29b1e3649e27f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/triptechdev/aperture-cli/releases/download/v0.1.0/aperture-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a66fd6de3225a850402b5a04246b301f6f6e4b13a70178e87a8a3020f64ca8fc"
  end

  def install
    bin.install "aperture-universal" => "aperture" if OS.mac?
    bin.install "aperture" if OS.linux?

    # Generate shell completions
    generate_completions_from_executable(bin/"aperture", "completions")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aperture --version")
  end
end
