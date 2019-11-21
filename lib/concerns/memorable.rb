module Memorable
  module ClassMethods
    def all
      self.class
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