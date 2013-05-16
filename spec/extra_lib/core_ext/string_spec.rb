require "spec_helper"

describe String do
  describe "#class_exists?" do

    it "should be defined" do
      String.method_defined?(:class_exists?).should be_true
    end

    it "should be true" do
      #array.flipflop.eql?([4, 3, 2, 1]).should be_true
      "String".class_exists?.should be_true
    end
  end
  describe "String#random" do
    it "should be defined" do
      String.method_defined?(:random).should be_true
    end
    context "set length as 4" do
      it "should be true" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        String.random(4, "abcdef").length.should eql(4)
      end
    end
  end
  describe "#random" do
    let (:str) { "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" }

    it "should be defined" do
      String.method_defined?(:random).should be_true
    end
    context "set length as 4" do
      it "should be true" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        str.random(4).length.should eql(4)
      end
      it "random string's each char should from str" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        is_include_all = true
        str.random(4).each_char{|c| is_include_all = false unless str.include?(c)}

        expect(is_include_all).to be_true
      end
    end
  end

  describe "#shuffle" do
    let (:str) { "abcdefghijklmnopqr" }

    it "should be defined" do
      String.method_defined?(:shuffle).should be_true
    end
    context "set length as 4" do
      it "should be true" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        str.shuffle.length.should eql(str.length)
      end
      it "each char should from str" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        is_include_all = true
        str.shuffle.each_char{|c| is_include_all = false unless str.include?(c)}

        expect(is_include_all).to be_true
      end
    end
  end

  describe "#capitalize_words" do
    let (:str) { "The dog is stupid" }

    it "should be defined" do
      String.method_defined?(:capitalize_words).should be_true
    end
    context "String with words capitalized" do
      it "should words capitalized" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        str.capitalize_words('is').should eql("The Dog is Stupid")
      end
    end
  end

  describe "#munge" do
    let (:str) { "You look like a terrifying goblin" }

    it "should be defined" do
      String.method_defined?(:munge).should be_true
    end
    context "#munge will take words, scramble only the middle contents of the word while the first and last letters remain intact" do
      it "should return munged string" do
        is_munge_word = true
        str_words = str.words
        munge_words = str.munge.words
        i = 0
        munge_words.each{|w|

          unless w.eql?(str_words[i])
            if !(w[0].eql?(str_words[i][0]) and w[-1].eql?(str_words[i][-1]))
              puts "#{[w, i, str_words[i]]}"
              is_munge_word = false
              break
            end
          end
          i += 1
        }

        expect(is_munge_word).to be_true
      end
    end
  end

  describe "#wrap" do
    let (:str) { "1234" }

    it "should be defined" do
      String.method_defined?(:wrap).should be_true
    end
    context "Wrap string by characters and join them by a specified separator" do
      it "should be string insert specified separator" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        str.wrap(2).should eql("12\n34")
      end
    end
  end

  describe "#nothing" do
    let (:str) { "   " }

    it "should be defined" do
      String.method_defined?(:nothing?).should be_true
    end
    context "Wrap string by characters and join them by a specified separator" do
      it "should be string insert specified separator" do
        #array.flipflop.eql?([4, 3, 2, 1]).should be_true
        str.nothing?.should be_true
      end
    end
  end
end
