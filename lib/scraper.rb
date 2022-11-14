require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".pt-none  pb-lg  mt-none  mb-none  bg-white.inlineMobileLeft-2Yo002")

courses.each {|course| puts course.text.strip}

first_course = doc.css(".pt-none  pb-lg  mt-none  mb-none  bg-white.inlineMobileLeft-2Yo002")[0].children