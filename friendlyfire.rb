output = `ruby #{ARGV[0]}`
puts output

# error status returned
if $?.to_i == 1
  # analyze output
end

#input = "begin\n"
#
#ARGF.each do |line|
#  input << line
#end
#
#input << "rescue Exception => e\n"
#input << "puts e.message\n"
#input << "puts e.backtrace\n"
#input << "end"
#
#eval(input)
