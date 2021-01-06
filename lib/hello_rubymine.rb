require "hello_rubymine/version"

module HelloRubymine
  class Error < StandardError; end
  def self.greet(name)
    puts "Hello, #{name}! I'm Ruby!"
  end
end
