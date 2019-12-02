
Chitter Challenge
=================

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use Google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

*Stories Completed:*

*Setup:*

1. In order to create this application first we will make sure that we have Sinatra and Capybara installed and running.
§ Sinatra is a Domain Specific language that quickly creates web applications in ruby. To check if it's installed on our    system or not we will run the following command in the terminal.

gem list sinatra

it came back with the following
*** LOCAL GEMS ***
sinatra (2.0.7)

which means we already have sinatra installed. if its not installed then the following command can be run to install it.

gem install sinatra

or include it in all of the gems needed in your gem file and then on the comand line run bundle install. It will install all the gems at once.

2. Now we need to set up our RSpec:
CD to the spec folder in the project directory and on the command line run

rspec --init

This will create our .rspec file

3. Set up Sinatra and Rack
 In the root directory of this project now we will be creating a simple sinatra app.rb file which will act as our Controller. Now in this file include require 'sinatra/base' at the top and write your very basic program for the app to run.

4. Create a file called config.ru and include the following

require_relative "./app"
run Chitter

By doing the above we are basically configuring the rackup command to run the application that we will be writing in the app.rb file.

5. Capybara :
I already installed capybara in this project. I just have to inform it now that any instructions like visit('/') should be directed to my application 'Chitter'. So, I am going the include the following in my spec helper file.

§§§§
# at the top of spec/spec_helper.rb
# Set the environment to "test"
ENV['RACK_ENV'] = 'test'
# Bring in the contents of the `app.rb` file
require File.join(File.dirname(__FILE__), '..', 'app.rb')
# Require all the testing gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'
# Tell Capybara to talk to BookmarkManager
Capybara.app = Chitter
### the rest of the file ###
§§§§

6. rerun
gem rerun helps you to make changes to your code and see the results without restarting the server.
So, I included gem 'rerun',   '0.13.0' in my gemfile and then ran gem install rerun on the command line.

Now we have set up our directory with necessary installation and files. So, now we can start building our app.

*Chitter Application Building:*

Step 1: Test drive the implementation of an index page.

In this step  we will follow the TDD process just to make a very simple working project just as a kick off to our main app. So, we will execute two simple things in this steps
    1. Write a failing feature tests
    2. Pass that test in the most simplest way possible

Step 2: 
















*Challenge:*
-------

As usual please start by forking this repo.

We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

Features:
-------

```
STRAIGHT UP

As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

Technical Approach:
-----

This week you integrated a database into Bookmark Manager using the `PG` gem and `SQL` queries. You can continue to use this approach when building Chitter Challenge.

If you'd like more technical challenge this weekend, try using an [Object Relational Mapper](https://en.wikipedia.org/wiki/Object-relational_mapping) as the database interface.

Some useful resources:
**DataMapper**
- [DataMapper ORM](https://datamapper.org/)
- [Sinatra, PostgreSQL & DataMapper recipe](http://recipes.sinatrarb.com/p/databases/postgresql-datamapper)

**ActiveRecord**
- [ActiveRecord ORM](https://guides.rubyonrails.org/active_record_basics.html)
- [Sinatra, PostgreSQL & ActiveRecord recipe](http://recipes.sinatrarb.com/p/databases/postgresql-activerecord?#article)

Notes on functionality:
------

* You don't have to be logged in to see the peeps.
* Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
* The username and email are unique.
* Peeps (posts to chitter) have the name of the maker and their user handle.
* Your README should indicate the technologies used, and give instructions on how to install and run the tests.

Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the CSS to make it look good.

Good luck and let the chitter begin!

Code Review
-----------

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want this weekend.

Automated Tests:
-----

Opening a pull request against this repository will will trigger Travis CI to perform a build of your application and run your full suite of RSpec tests. If any of your tests rely on a connection with your database - and they should - this is likely to cause a problem. The build of your application created by has no connection to the local database you will have created on your machine, so when your tests try to interact with it they'll be unable to do so and will fail.

If you want a green tick against your pull request you'll need to configure Travis' build process by adding the necessary steps for creating your database to the `.travis.yml` file.

- [Travis Basics](https://docs.travis-ci.com/user/tutorial/)
- [Travis - Setting up Databases](https://docs.travis-ci.com/user/database-setup/)

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!
