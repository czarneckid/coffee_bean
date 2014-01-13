# coffee_bean

A ruby gem for kickstarting a CoffeeScript project.

## Installation

`gem install coffee_bean`

## Usage

`coffee_bean new <project name>`

```
Tasks:
  coffee_bean help PROJECT_NAME [TASK]  # Describe available tasks or one specific task
  coffee_bean new PROJECT_NAME          # Create a new CoffeeScript project

Options:
  [--author-name=AUTHOR_NAME]                  # Author name, e.g. David Czarnecki.
                                               # Default: Firstname Lastname
  [--test-framework=TEST_FRAMEWORK]            # Test framework, e.g. spec. spec/ and spec_helper.js would be created.
                                               # Default: test
  [--initial-file=INITIAL_FILE]                # Initial file, e.g. index. src/index.coffee would be created.
                                               # Default: index
  [--project-description=PROJECT_DESCRIPTION]  # Project description, e.g. A description of the project.
                                               # Default: A description of the project.
  [--github-owner=GITHUB_OWNER]                # GitHub project owner, e.g. czarneckid
                                               # Default: owner
```

## Contributing to coffee_bean

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012-2014 David Czarnecki. See LICENSE.txt for further details.
