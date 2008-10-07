require File.dirname(__FILE__) + '/../../../spec_helper'

describe Sogi::Parser::Amazon do
  before(:each) do
    @parser = Sogi::Parser::Amazon.new
    @parser.body = File.read(SOGI_FIXTURES_PATH + "/sample_xml/amazon_order_sample.xml")
    @parser.body.should_not be_nil
    @parser.document.should_not be_nil
  end

  it "should know about various orders xml orders" do
    @parser.orders.should_not be_nil
    @parser.orders.size.should eql(2)
    order = @parser.orders[0]
    order.should_not be_nil
    order.should respond_to(:order_id)
    order.order_id.should eql("050-1234567-1234567")
  end

  it "should know about various order numbers" do
  end

  it "should have information about dates" do
    pending ""
  end

  it "should have information about customers" do
    pending ""
  end

  it "should have information about recipients" do
    pending ""
  end

  it "should parse line items" do
    pending ""
  end

  it "should parse taxes" do
    pending ""
  end

  it "should parse shipping methods" do
    pending ""
  end

  it "should parse special instructions" do
    pending ""
  end

end

