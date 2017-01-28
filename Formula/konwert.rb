class Konwert < Formula
  head "https://github.com/taw/konwert.git"

  def install
    Dir.chdir("konwert-1.8") do
      system "make", "--prefix=#{prefix}", "all", "install"
    end
  end

  test do
    system "#{bin}/konwert", "--version"
  end
end
