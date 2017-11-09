Given /^PENDING/ do
    pending
end

Given /the following points of interest exist/ do |points_table|
    points_table.hashes.each do |point|
        Point.create point
    end
end

Then /(.*) seed points should exist/ do |n_seeds|
    Point.count.should be n_seeds.to_i
end



Then /^(?:|I )should see the form field "([^"]*)"$/ do |field|
    if page.respond_to? :should
        page.should have_field(field)
    else
        assert page.has_no_field?(field)
    end
end

