require 'spec_helper'
require 'coffee_bean/version'

describe 'CoffeeBean::VERSION' do
  it 'should be the correct version' do
    CoffeeBean::VERSION.should == '1.0.0'
  end
end