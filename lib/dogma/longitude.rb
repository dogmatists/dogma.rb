# This is free and unencumbered software released into the public domain.

##
# A longitude.
#
# @see https://dogma.dev/Longitude/
class Dogma::Longitude
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
end # Dogma::Longitude
