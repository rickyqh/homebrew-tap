cask "orbit" do
  version "1.0.3"
  sha256 "72a431de7016c1f025af2a98ef16eafa82c3d3d452432bada6982e30e5bb5ac9"
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
