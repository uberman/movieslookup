require 'open-uri'
require 'json'

Given /^A call to the Rotten Tomatoes API about a (.*)$/ do |movie|
  @mquery = JSON.parse(open("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=jc7eaxjfpemb2uz7qsrudnsq&q=#{movie}&page_limit=1").read)
end

Then /^the response should include a (.*)$/ do |year|
  @mquery['movies'][0]['year'].to_s.should == "#{year}"
end

And /^also a movie rating of (.*)$/ do |mpaa_rating|
  @mquery['movies'][0]['mpaa_rating'].should == "#{mpaa_rating}"
end
And /^the movie duration (.*)$/ do |runtime|
  @mquery['movies'][0]['runtime'].to_s.should == "#{runtime}"
  end