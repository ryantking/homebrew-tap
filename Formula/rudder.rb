# This file was generated by GoReleaser. DO NOT EDIT.
class Rudder < Formula
  desc "Portable Kubernetes deployment tool"
  homepage "github.com/ryantking/rudder"
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ryantking/rudder/releases/download/v1.2.0/rudder-1.2.0-darwin-amd64.tar.gz"
    sha256 "cc7522591e8fa9bbef2d68a5cae6a1ac21d0c2e398801c1e0efad152fd25378b"
  elsif OS.linux?
    url "https://github.com/ryantking/rudder/releases/download/v1.2.0/rudder-1.2.0-linux-amd64.tar.gz"
    sha256 "e14489b1a33110a7c1b4fd38df242c20581ddf5abec685c2140df29c071c3be6"
  end

  def install
    bin.install "rudder"
  end

  test do
    system "${bin}/rudder --version"
  end
end
