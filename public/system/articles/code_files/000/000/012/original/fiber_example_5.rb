require 'fiber'

f = g = nil

f = Fiber.new {|x|		# 1:
  puts "f1: #{x}"		# 2: print "f1: 1"
  x = g.transfer(x+1)   # 3: pass 2 to line 8
  puts "f2: #{x}"		# 4: print "f2: 3"
  x = g.transfer(x+1)	# 5: return 4 to line 10
  puts "f3: #{x}"		# 6: print "f3: 5"
  x + 1					# 7: return 6 to line 13
}
g = Fiber.new {|x|		# 8:
  puts "g1: #{x}"		# 9: print "g1: 2"
  x = f.transfer(x+1)	# 10: return 3 to line 3
  puts "g2: #{x}"		# 11: print "g2: 4"
  x = f.transfer(x+1)	# 12: return 2 to line 5
}
puts f.transfer(1)		# 13: pass 1 to line 1
