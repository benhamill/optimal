Given /^a file called '(.*?)' with:$/ do |file_name, contents|
  FileUtils.rm_rf 'work'
  FileUtils.mkdir 'work'
  File.open("work/#{file_name}", 'w') do |f|
    f.write contents
  end
  `chmod +x work/#{file_name}`
end

When /^I type '(.*?)'$/ do |cmd|
  @result = %x["/work/#{cmd}"]
end

Then /^I should see$/ do |string|
  @result.should == string
end

