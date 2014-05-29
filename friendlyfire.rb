require 'colored'
require 'open3'

puts ARGV
cmd = "ruby #{ARGV[0]}"
#puts output
#puts $?.to_i

output = ""
Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
  puts "stdout is:" + stdout.read
  output << stderr.read
end

puts output

# error status returned
if output
  puts output.split("\n")[0].red
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
