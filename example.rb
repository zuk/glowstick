$:.unshift(File.join('.', 'lib'))
require 'lib/glowstick'
require 'lib/glowstick/chart'
Glowstick::VERSION

chart = Glowstick::Chart.new
chart.data = 12, 14, 17, 1, 11, 0, 8

glow = Glowstick.new(nil)
glow.start