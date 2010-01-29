module Keyable
  def key(attribute)
    class_eval(%Q{
    	def #{attribute}=(value)
    	  @#{attribute} = value
    	end

    	def #{attribute}
    	  @#{attribute}
    	end
    })
  end
end
