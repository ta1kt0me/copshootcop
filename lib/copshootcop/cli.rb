require 'thor'

module Copshootcop
  class CLI < Thor
    desc "hound", "Create config files for Hound CI."
    def hound
      FileUtils.cp_r("#{File.expand_path("../hound/.", __FILE__)}/.", Dir.pwd)
      puts "Shut Hound CI up!"
    end
  end
end

