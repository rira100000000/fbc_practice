#!/usr/bin/env ruby
require "optparse"
def option_perse
  opt = OptionParser.new
  opt.on("-m value")
  opt.on("-y value")
  opt.parse(ARGV)

  m_option_count = 0
  y_option_count = 0
  now_option = ""
  month = ""
  year = ""

  ARGV.each do |option|
    if option == "-m" or option == "-y"
      now_option = option
      next
    elsif now_option == "-m"
      m_option_count += 1
      raise "mオプションに指定できる引数は１つです" if m_option_count >= 2
      month = option
    elsif now_option == "-y"
      y_option_count += 1
      raise "yオプションに指定できる引数は１つです" if y_option_count >= 2
      year = option
    else
      raise "不明なオプションです"
    end
  end

  p month
  p year

  return month.to_i ,year.to_i 
end
