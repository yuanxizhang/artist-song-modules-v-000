module Memorable
  module ClassMethods 
    def count
      self.all.count
    end
  
    def reset_all
      self.all.clear
    end
  module InstanceMethods
    def initialize(name)
end