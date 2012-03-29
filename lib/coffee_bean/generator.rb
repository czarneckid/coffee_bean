require 'thor/group'
require 'thor/actions'

module CoffeeBean
  class Generator < Thor
    include Thor::Actions

    argument :project_name

    class_option :author_name, :default => 'Firstname Lastname'

    def self.source_root
      File.dirname(__FILE__)
    end

    desc "new", "Create a new CoffeeScript project"
    def new
      template('templates/.gitignore', "#{project_name}/.gitignore")
      template('templates/.npmignore', "#{project_name}/.npmignore")
      template('templates/LICENSE.txt', "#{project_name}/LICENSE.txt")
      template('templates/CHANGELOG.md', "#{project_name}/CHANGELOG.md")
    end
  end
end