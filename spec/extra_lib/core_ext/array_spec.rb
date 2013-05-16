require "spec_helper"

describe Array do
  describe "#flipflop" do
    let(:array) { [1, 2, 3, 4] }

    it "should be defined" do
      Array.method_defined?(:flipflop).should be_true
    end

    it "should return [4, 2, 3, 1]" do
      #array.flipflop.eql?([4, 3, 2, 1]).should be_true
      array.flipflop.should eql([4, 2, 3, 1])
    end
  end
  describe "#flipflop" do
    let(:array) { [1, 2, 3, 4] }

    it "should be defined" do
      Array.method_defined?(:flipflop!).should be_true
    end

    it "should return [4, 2, 3, 1]" do
      array.flipflop!.should eql([4, 2, 3, 1])
    end

    it "should destructive array self" do
      array.flipflop!.should eql(array)
    end
  end
  describe "#nothing" do
    it "should be defined" do
      Array.method_defined?(:nothing?).should be_true
    end

    it "should destructive array self" do
      [" ", "   ", ""].nothing?.should be_true
    end
  end
  describe "#contains?" do
    it "should be defined" do
      Array.method_defined?(:contains?).should be_true
    end

    it "should destructive array self" do
      ['foo', 1, :bar].contains?(Symbol).should be_true
    end
  end
  describe "#replace_array" do
    it "should be defined" do
      Array.method_defined?(:replace_array).should be_true
    end

    it "should return array replace" do
      [1, 5, 3, 4, 2].replace_array([5,3],["3", "5"]).should eql([1, "3", "5", 4, 2])
    end
  end
end
