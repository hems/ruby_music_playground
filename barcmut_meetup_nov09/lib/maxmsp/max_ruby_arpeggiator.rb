$LOAD_PATH.unshift File.dirname($0) + '/..'
require 'basic_arpeggiator'

@arp = BasicArpeggiator.new do |pitch,velocity|
  out0 pitch,velocity
end

def time(time_in_ticks)
  @arp.play(time_in_ticks)
end

def list(pitch,velocity)
  @arp.note_in(pitch,velocity)
end
# Note: in ajm_objects versions < 0.9 you have to this
# def list(args_array)
#   pitch,velocity = args_array

