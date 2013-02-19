Map = Hash

class Map
  def self.to_s; @__to_s ||= super.sub(/(.*)Hash/, '\1Map'); end
  def self.name; to_s; end
end

