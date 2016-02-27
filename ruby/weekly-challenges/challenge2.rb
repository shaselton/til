#!/usr/bin/env ruby
puts [2,5,2,6,234,1,2,45,1,2,5,6,1,2,4,8,6,5,3,2,7].inject({}) { |r, e| r[e] ||= 0; r[e] += 1; r }.select { |k,v| v.even? }.keys.first
