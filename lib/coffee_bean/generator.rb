require 'thor/group'
require 'thor/actions'

module CoffeeBean
  class Generator < Thor
    include Thor::Actions

    argument :project_name

    class_option :author_name, :default => 'Firstname Lastname', :desc => 'Author name, e.g. David Czarnecki.'
    class_option :test_framework, :default => 'test', :desc => 'Test framework, e.g. spec. spec/ and spec_helper.js would be created.'
    class_option :initial_file, :default => 'index', :desc => 'Initial file, e.g. index. src/index.coffee would be created.'
    class_option :project_description, :default => 'A description of the project.', :desc => 'Project description, e.g. A description of the project.'
    class_option :github_owner, :default => 'owner', :desc => 'GitHub project owner, e.g. czarneckid'

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
      template('templates/package.json', "#{project_name}/package.json")

      create_file("#{project_name}/#{options[:test_framework]}/#{options[:test_framework]}_helper.js")
      create_file("#{project_name}/#{options[:test_framework]}/#{project_name}_#{options[:test_framework]}.coffee")
      create_file("#{project_name}/src/#{options[:initial_file]}.coffee")
    end
  end
end