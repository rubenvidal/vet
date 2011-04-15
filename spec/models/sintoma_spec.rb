require File.dirname(__FILE__) + '/../spec_helper'

describe Sintoma do
  it "should be valid" do
    Sintoma.new.should be_valid
  end
end
