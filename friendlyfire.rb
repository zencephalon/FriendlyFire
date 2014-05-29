require 'colored'
require 'open3'

#puts ARGV
cmd = "ruby #{ARGV[0]}"
#puts output
#puts $?.to_i

output = ""
Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
  output << stderr.read
end

#puts output

# error status returned
if output
  lines = output.lines
  puts lines.shift.chomp.red
  lines.each do |line|
    puts line
  end
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
