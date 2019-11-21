module Memorable
  module ClassMethods
    def all
      ObjectSpace.each_object(self).to_a
    end
    
    def reset_all
      self.all.clear  
    end
  
    def count
      self.all.length
    end
  end
  
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end