cask "orbit" do
  version "1.0.3"
  sha256 "181c18af00d885de357b09576d555e76f74490911be1c2912b4022f4b1867d60"
  url "https://github.com/rickyqh/orbit/releases/download/v#{version}/Orbit.dmg"
  name "Orbit"
  desc "A customisable browser by rickyqh"
  homepage "https://github.com/rickyqh/orbit"
  depends_on arch: :arm64
  app "Orbit.app"
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Orbit.app"]
  end
end
