require 'rubygems'
require 'spec'
require 'keyable'

class KeyableClass
  extend Keyable

  key :foo
  key :bar
end

describe KeyableClass do
  before(:each) do
    @thing = KeyableClass.new
  end

  it "should be able to store a value" do
    @thing.foo = "Bar"
    @thing.foo.should eql("Bar")
  end

  describe "defined methods" do
    before(:each) do 
      @thing.foo = "Bar"
      @thing.bar = 4
    end
    
    it "should create an instance variable" do
      @thing.instance_variables.should include("@foo")
      @thing.instance_variables.should include("@bar")
    end

  end
end
