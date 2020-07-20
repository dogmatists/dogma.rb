# This is free and unencumbered software released into the public domain.

##
# An angle.
#
# @see https://dogma.dev/Angle/
class Dogma::Angle
  # @return [Float]
  attr_reader :radians

  ##
  # @param  [Float] radians
  # @return [void]
  def initialize(radians)
    @radians = radians
  end

  ##
  # @return [Float]
  def to_f
    self.radians
  end
end # Dogma::Angle