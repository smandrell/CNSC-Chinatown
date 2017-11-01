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