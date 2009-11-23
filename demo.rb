#!/usr/bin/env ruby

require('rubygems')
require('netchecker')

begin
  check = Netchecker.new()
end


result = check.check_url("google.com", 80)
puts "Checking google.com  -  Result: #{result}"
result = check.check_url("goo.wwerwerercom", 80)
puts "Checking goo.wwerwerercom:80  -  Result: #{result}"
result = check.check_url("github.com", 80)
puts "Checking github.com:80  -  Result: #{result}"
