require 'thor/group'
require 'thor/actions'

module CoffeeBean
  class Generator < Thor
    include Thor::Actions

    argument :project_name

    class_option :author_name, :default => 'Firstname Lastname'
    class_option :test_framework, :default => :test

    def self.source_root
      File.dirname(__FILE__)
    end

    desc "new", "Create a new CoffeeScript project"
    def new
      template('templates/.gitignore', "#{project_name}/.gitignore")
      template('templates/.npmignore', "#{project_name}/.npmignore")
      template('templates/LICENSE.txt', "#{project_name}/LICENSE.txt")
      template('templates/CHANGELOG.md', "#{project_name}/CHANGELOG.md")
      template('templates/README.md', "#{project_name}/README.md")
      template('templates/Makefile', "#{project_name}/Makefile")

      create_file("#{project_name}/#{options[:test_framework]}/#{options[:test_framework]}_helper.js")
      create_file("#{project_name}/#{options[:test_framework]}/#{project_name}_#{options[:test_framework]}.coffee")
    end
  end
end