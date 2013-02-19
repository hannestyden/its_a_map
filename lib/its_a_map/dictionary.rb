Dictionary = Hash

class Dictionary
  def self.to_s; @__to_s ||= super.sub(/(.*)Hash/, '\1Dictionary'); end
  def self.name; to_s; end
end

