#Step definitions for points model

Given /^PENDING/ do
    pending
end

Given /the following points of interest exist/ do |points_table|
    points_table.hashes.each do |point|
        Point.create point
    end
end

Given /^(?:|I )want to "([^"]*)" point "([^"]*)"$/ do |command, point|
   first(:link, command).click
end

Then /(.*) seed points should exist/ do |n_seeds|
    Point.count.should be n_seeds.to_i
end

Then /I press "(.*)" on the popup window/ do |command|
  begin
    main, popup = page.driver.browser.window_handles
    within_window(popup) do
      click_on(command)
    end
  rescue
  end
end

    
Then /^(?:|I )should see the point trait "([^"]*)"$/ do |trait|
    if page.respond_to? :should
        page.should have_xpath('//*', :text => trait)
    else
        assert page.has_xpath?('//*', :text => trait)
    end
end

Then /^(?:|I )should see the form field "([^"]*)"$/ do |field|
    if page.respond_to? :should
        page.should have_field(field)
    else
        assert page.has_no_field?(field)
    end
end
