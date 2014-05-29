require 'colored'
require 'open3'

cmd = "ruby #{ARGV[0]}"

output = ""
Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
  output << stderr.read
end

# error status returned
if output
  lines = output.lines

  # Future, red the first line originating from a file in the same directory, ie. not in a gem
  puts lines.shift.chomp.red
  lines.each do |line|
    if line =~ /from\s[^\/]/
      puts line.chomp.red
    else
      puts line
    end
  end
end
