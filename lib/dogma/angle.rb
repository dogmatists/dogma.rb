# This is free and unencumbered software released into the public domain.

##
# An angle.
#
# @see https://dogma.dev/Angle/
class Dogma::Angle
  # @return [Float]
  attr_reader :radians

  ##
  # @param  [Float, #to_f] degrees
  # @param  [Float, #to_f] radians
  # @param  [Float, #to_f] turns
  # @return [void]
  def initialize(degrees: nil, radians: nil, turns: nil)
    @radians = case
      when radians then radians.to_f
      when degrees then degrees.to_f/180 * Math::PI
      when turns then turns * 2*Math::PI
    end
  end

  ##
  # @return [Float]
  def to_f
    self.radians
  end

  ##
  # @return [Float]
  def as_degrees
    self.radians/Math::PI * 180
  end

  ##
  # @return [Float]
  def as_radians
    self.radians
  end

  ##
  # @return [Float]
  def as_turns
    self.radians / (2*Math::PI)
  end
end # Dogma::Angle
