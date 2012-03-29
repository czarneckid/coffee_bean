# coffee_bean

A ruby gem for kickstarting a CoffeeScript project.

## Installation

`gem install coffee_bean`
  
## Usage

`coffee_bean new <project name>`

Available options:

`--author-name="David Czarnecki"` 
* Description: Author name.
* Default: `Firstname Lastname`

`--test-framework=test` 
* Description: Test "framework".
* Default: `test`

`--initial_file=index`
* Description: Initial file to be created that holds the src. In the default case, `src/index.coffee` would be created.
* Default: `index`

`--project_description`
* Description: Project description.
* Default: `'A description of the project.'`

`--github_owner=czarneckid`
* Description: GitHub project owner.
* Default: `owner`

## Contributing to coffee_bean
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 David Czarnecki. See LICENSE.txt for further details.
