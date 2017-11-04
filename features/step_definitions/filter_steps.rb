When /I (un)?check the following categories: (.*)/ do |uncheck, categories_list|
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
  split_categories_list = categories_list.split(/,\s*/)
  split_categories_list.each { |r|
    if uncheck
      uncheck "categories_#{r}"
    else
      check "categories_#{r}"
    end
  }
end