require "spec_helper"

describe Numeric do
  describe "#negative?" do
    it "should be defined" do
      Numeric.method_defined?(:negative?).should be_true
    end

    it "'-1.negative?' should return an true" do
      -1.negative?.should be_true
    end

    it "'1.negative?' should return an false" do
      1.negative?.should be_false
    end

    it "'0.negative?' should return an false" do
      0.negative?.should be_false
    end
  end

  describe "#positive?" do
    it "should be defined" do
      Numeric.method_defined?(:positive?).should be_true
    end

    it "'-1.positive?' should return an true" do
      -1.positive?.should be_false
    end

    it "'1.positive?' should return an false" do
      1.positive?.should be_true
    end

    it "'0.positive?' should return an false" do
      0.positive?.should be_true
    end
  end
  describe "#format" do
    it "should be defined" do
      Numeric.method_defined?(:format).should be_true
    end

    it "should return an string" do
      (4569810.12).format.should eql("4,569,810.12")
    end
  end
  describe "#crop" do
    let (:num) { -2 }
    it "should be defined" do
      Numeric.method_defined?(:crop).should be_true
    end

    it "should return '0' if provider '(0..1)'" do
      -2.crop(0..1).should eql(0)
    end

    it "should return '-2' if provider '(-3..1)'" do
      -2.crop(-3..1).should eql(-2)
    end

    it "should return '-2' if provider '(-3..-2.5)'" do
      -2.crop(-3..-2.5).should eql(-2.5)
    end
  end
end
