require "spec_helper"

describe Class do
  describe "#instances" do
    it "should be defined" do
      Class.method_defined?(:instances).should be_true
    end

    it "should include instance defined" do
      #array.flipflop.eql?([4, 3, 2, 1]).should be_true
      test_class = TestClass.new
      TestClass.instances.should include(test_class)
    end
  end

  describe "#ancestor?" do
    it "should be defined" do
      Class.method_defined?(:ancestor?).should be_true
    end

    it "should has ParentClass defined" do
      ChildrenClass.ancestor?(ParentClass).should be_true
    end
  end

  describe "#parent?" do
    it "should be defined" do
      Class.method_defined?(:parent?).should be_true
    end

    it "should has ParentClass defined" do
      ChildrenClass.parent?(ParentClass).should be_true
    end
  end
end
