require 'spec_helper'

describe CoffeeBean::Generator do
  let(:generator) do
    CoffeeBean::Generator.new(['product'], {}, {})
  end

  describe 'class_options' do
    it 'should have the correct default options' do
      CoffeeBean::Generator.class_options.tap do |options|
        options[:author_name].default.should == 'Firstname Lastname'
        options[:test_framework].default.should == 'test'
        options[:initial_file].default.should == 'index'
        options[:project_description].default.should == 'A description of the project.'
        options[:github_owner].default.should == 'owner'
      end
    end
  end

  describe '#new' do
    it 'should create the right files when generating a new CoffeeScript project' do
      generator_result = capture(:stdout) do
        CoffeeBean::Generator.start(['new', 'beanery'])
      end

      File.directory?(File.dirname(__FILE__) + '/../../beanery').should be_true
      FileUtils.rm_rf(File.dirname(__FILE__) + '/../../beanery')
    end
  end
end