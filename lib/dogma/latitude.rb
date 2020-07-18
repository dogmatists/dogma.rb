# This is free and unencumbered software released into the public domain.

##
# A latitude.
#
# @see https://dogma.dev/Latitude/
class Dogma::Latitude
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
end # Dogma::Latitude
