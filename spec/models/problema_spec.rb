require File.dirname(__FILE__) + '/../spec_helper'

describe Problema do
  it "should be valid" do
    Problema.new.should be_valid
  end
end
