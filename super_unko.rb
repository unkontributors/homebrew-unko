class SuperUnko < Formula
  desc "Let's us create shit commands"
  homepage "https://github.com/greymd/super_unko"
  url "https://github.com/unkontributors/super_unko.git", :branch => "master"
  head "https://github.com/unkontributors/super_unko.git", :branch => "master"

  bottle :unneeded

  def install
    system "./install.sh", prefix
  end

  test do
    pipe_output("#{bin}/unko.tower", 0)
  end
end
