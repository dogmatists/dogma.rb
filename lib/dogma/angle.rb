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
  # @raise  [ArgumentError] if no keyword was provided
  def initialize(degrees: nil, radians: nil, turns: nil)
    @radians = case
      when radians then radians.to_f
      when degrees then degrees.to_f/180 * Math::PI
      when turns then turns * 2*Math::PI
      else raise ArgumentError, "Angle.new expected one of the keywords: degrees, radians, turns"
    end
  end

  ##
  # Returns the angle in radians.
  #
  # @return [Float]
  def to_f
    self.radians
  end

  ##
  # Returns the angle in degrees.
  #
  # @return [Float]
  def as_degrees
    self.radians/Math::PI * 180
  end

  ##
  # Returns the angle in radians.
  #
  # @return [Float]
  def as_radians
    self.radians
  end

  ##
  # Returns the angle in turns.
  #
  # @return [Float]
  def as_turns
    self.radians / (2*Math::PI)
  end
end # Dogma::Angle
