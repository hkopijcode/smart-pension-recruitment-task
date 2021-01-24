# Ruby Developer Test
Recruitment task for Smart Pension
## Task:
Write a ruby script that:

a. Receives a log as argument (webserver.log is provided)
e.g.: ./parser.rb webserver.log

b. Returns the following:

- list of webpages with most page views ordered from most pages views to less page views
e.g.:

  /home 90 visits

  /index 80 visits etc... 
- list of webpages with most unique page views also ordered
e.g.:

  /about/2 8 unique views

  /index 5 unique views etc...


## Usage

Before running:
- bundle install

Running script on logfile e.g.:
- parser.rb webserver.log

Running tests:
- rspec

## Future improvements
- DRY *_views.rb files - majority of code in most_views.rb and unique_views.rb is the same - probably it would be good idea to extract code to some Base class and operate from there.
- improve specs - especially parts where I used static hashes
