require 'spec_helper.rb'

describe Translator do
  describe ".translate" do
	it "should convert English into German" do
	  text = Translator.translate("hello are you there","de","en")
	  text.should eq("hallo bist du da")
	end
	it "should convert Engish into Spanish" do
	  text = Translator.translate("Hello","ga","en")
      text.should eq("Dia duit")
	end
	it "should convert English into French" do
	  text = Translator.translate("Hello","fr","en")
      text.should eq("Bonjour")
	end
	it "should convert English into Dutch" do
	  text = Translator.translate("Hello Dutch","nl","en")
      text.should eq("hello Nederlands")
	end
	it "should convert English into Turkish" do
	  text = Translator.translate("Hello","tr","en")
      text.should eq("Merhaba")
	end
  end
end