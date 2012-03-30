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
    it 'should create the right files when generating a new CoffeeScript project with defaults' do
      generator_result = capture(:stdout) do
        CoffeeBean::Generator.start(['new', 'beanery'])
      end

      beanery_directory = File.dirname(__FILE__) + '/../../beanery'
      File.directory?(beanery_directory).should be_true
      File.exist?(File.join(beanery_directory, '.gitignore')).should be_true
      File.exist?(File.join(beanery_directory, '.npmignore')).should be_true
      File.exist?(File.join(beanery_directory, 'CHANGELOG.md')).should be_true
      File.exist?(File.join(beanery_directory, 'LICENSE.txt')).should be_true
      File.exist?(File.join(beanery_directory, 'Makefile')).should be_true
      File.exist?(File.join(beanery_directory, 'package.json')).should be_true
      File.exist?(File.join(beanery_directory, 'README.md')).should be_true
      File.exist?(File.join(beanery_directory, 'src', 'index.coffee')).should be_true
      File.exist?(File.join(beanery_directory, 'test', 'beanery_test.coffee')).should be_true
      File.exist?(File.join(beanery_directory, 'test', 'test_helper.js')).should be_true
      FileUtils.rm_rf(beanery_directory)
    end

    it 'should create the right files when generating a new CoffeeScript project with option changes' do
      generator_result = capture(:stdout) do
        CoffeeBean::Generator.start(['new', 'beanery', '--test_framework=spec', '--initial_file=beanery'])
      end

      beanery_directory = File.dirname(__FILE__) + '/../../beanery'
      File.directory?(beanery_directory).should be_true
      File.exist?(File.join(beanery_directory, '.gitignore')).should be_true
      File.exist?(File.join(beanery_directory, '.npmignore')).should be_true
      File.exist?(File.join(beanery_directory, 'CHANGELOG.md')).should be_true
      File.exist?(File.join(beanery_directory, 'LICENSE.txt')).should be_true
      File.exist?(File.join(beanery_directory, 'Makefile')).should be_true
      File.exist?(File.join(beanery_directory, 'package.json')).should be_true
      File.exist?(File.join(beanery_directory, 'README.md')).should be_true
      File.exist?(File.join(beanery_directory, 'src', 'beanery.coffee')).should be_true
      File.exist?(File.join(beanery_directory, 'spec', 'beanery_spec.coffee')).should be_true
      File.exist?(File.join(beanery_directory, 'spec', 'spec_helper.js')).should be_true
      FileUtils.rm_rf(beanery_directory)
    end
  end
end