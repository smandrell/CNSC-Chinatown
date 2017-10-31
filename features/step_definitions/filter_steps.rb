Given /the following points of interest exist/ do |points_table|
    points_table.hashes.each do |p|
        Point.create!(p)
    end
end

Then /(.*) seed points should exist/ do |n_seeds|
    Point.count.should be n_seeds.to_i
end

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  split_rating_list = rating_list.split(/,\s*/)
  split_rating_list.each { |r|
    if uncheck
      uncheck "ratings_#{r}"
    else
      check "ratings_#{r}"
    end
  }
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^(?:|I )should see \/([^\/]*)\/$/ do |regexp|
  regexp = Regexp.new(regexp)

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end