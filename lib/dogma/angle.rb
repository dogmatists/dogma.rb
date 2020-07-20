# This is free and unencumbered software released into the public domain.

##
# An angle.
#
# @see https://dogma.dev/Angle/
class Dogma::Angle
  # @return [Float]
  attr_reader :radians

  ##
  # @param  [Float] degrees
  # @param  [Float] radians
  # @param  [Float] turns
  # @return [void]
  def initialize(degrees: nil, radians: nil, turns: nil)
    @radians = case
      when radians then radians.to_f
      when degrees then degrees.to_f / 180 * Math::PI
      when turns then turns * 2 * Math::PI
    end
  end

  ##
  # @return [Float]
  def to_f
    self.radians
  end
end # Dogma::Angle
