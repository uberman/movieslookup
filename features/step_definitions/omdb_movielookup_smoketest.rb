require 'open-uri'
require 'json'
#OMDB version
Given /^A call to OMDB API about a (.*)$/ do |movie|
  @mquery = JSON.parse(open("http://www.omdbapi.com/?t=#{movie}").read)
end

Then /^the OMDB response should include a (.*)$/ do |year|
  @mquery['Year'].to_s.should == "#{year}"
end

And /^also an OMDB movie rating of (.*)$/ do |mpaa_rating|
  @mquery['Rated'].should == "#{mpaa_rating}"
end
And /^the OMDB movie genre (.*)$/ do |genre|
  @mquery['Genre'].should == "#{genre}"
end