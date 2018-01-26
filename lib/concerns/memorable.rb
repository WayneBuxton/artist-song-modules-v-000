module Memorable
  module ClassMethods
   def reset_all
     self.all.clear
   end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initializes
      super
      @songs = []
      self.class.all << self
    end
  end
end
