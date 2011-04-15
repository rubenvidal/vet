require File.dirname(__FILE__) + '/../spec_helper'

describe Animalito do
  it "should be valid" do
    Animalito.new.should be_valid
  end
end
