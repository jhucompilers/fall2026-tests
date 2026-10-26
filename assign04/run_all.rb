#! /usr/bin/env ruby

high_level = false
if ARGV.length > 0 && ARGV[0] == '-h'
  high_level = true
  STDERR.puts "Running high-level IR simulator on all tests"
  STDERR.puts "Warning: the example29 and example31 tests are very slow to simulate"
end

testcases = []

IO.popen("ls input/*.c") do |f|
  f.each_line do |line|
    line.chomp!
    if m = /^input\/(.*)\.c$/.match(line)
      testcases.push(m[1])
    end
  end
end

num_passed = 0

testcases.each do |testname|
  #puts testname
  print "#{testname}..."
  STDOUT.flush
  hl_opt = high_level ? '-h' : ''
  rc = system("./run_test.rb #{hl_opt} #{testname} > /dev/null 2> /dev/null")
  if rc
    puts "passed!"
    num_passed += 1
  else
    puts "FAILED"
  end
end

if num_passed == testcases.length
  puts "All tests passed!"
  exit 0
else
  puts "#{num_passed}/#{testcases.length} tests passed"
  exit 1
end
