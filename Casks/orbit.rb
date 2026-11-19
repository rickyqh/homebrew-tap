cask "orbit" do
  version "1.0.1"
  sha256 "065de544e0fad0c7c3963f11317ff6fa56a60a269db88c7172a7b1e28ecd62b3"
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
