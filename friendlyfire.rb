input = "begin\n"

ARGF.each do |line|
  input << line
end

input << "rescue\n"
input << "puts 'hello'\n"
input << "end"

eval(input)
