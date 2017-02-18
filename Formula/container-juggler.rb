class ContainerJuggler < Formula
  desc "wrapper/config-generator for docker-compose"
  homepage "https://github.com/sgeisbacher/container-juggler"
  url "https://github.com/sgeisbacher/container-juggler/releases/download/v2.0.1/container-juggler-darwin-amd64"
  version "2.0.1"
  sha256 "8698bfb8f30e9bdc5b8e41be40032cb0b63f43ab1d757cf9183c9665e7f76844"

  depends_on "docker-compose" => :optional

  def install
    bin.install "container-juggler-darwin-amd64"
    bin.install_symlink "#{bin}/container-juggler-darwin-amd64" => "container-juggler"
  end

  test do
    system bin/"container-juggler", "help"
  end
end
