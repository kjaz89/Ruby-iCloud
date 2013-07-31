require 'base64'

module Cloud
  class Util
    class << self
      def header_base64 input
        Base64.encode64(input).tr("\n",'')
      end
    end
  end
end
require 'plist'
#Plist key hack :D
module Plist
  class PKey
    alias :old_to_ruby :to_ruby
    def to_ruby
      old_to_ruby.to_sym
    end
  end
end