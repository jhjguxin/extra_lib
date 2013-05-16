require "spec_helper"

describe Enumerable do
  describe "#to_hash" do
    it "should be defined" do
      Enumerable.method_defined?(:to_hash).should be_true
    end

    it "should return an hash" do
      [:foo, :bar, :baz, :qux].to_hash.should eql({:foo => :bar, :baz => :qux})
    end
  end

end
