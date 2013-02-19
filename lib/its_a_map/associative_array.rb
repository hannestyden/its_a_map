AssociativeArray = Hash

class AssociativeArray
  def self.to_s; @__to_s ||= super.sub(/(.*)Hash/, '\1AssociativeArray'); end
  def self.name; to_s; end
end
