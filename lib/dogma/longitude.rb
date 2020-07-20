# This is free and unencumbered software released into the public domain.

require_relative 'angle'

##
# A longitude.
#
# @see https://dogma.dev/Longitude/
class Dogma::Longitude < Dogma::Angle
  ##
  # @param  [Float, #to_f] degrees
  # @return [void]
  def initialize(degrees)
    degrees = degrees.to_f
    raise ArgumentError, "Longitude bounds are ±180°, but got #{degrees}°" if degrees.abs > 180
    super(degrees: degrees)
  end
end # Dogma::Longitude
