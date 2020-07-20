# This is free and unencumbered software released into the public domain.

require_relative 'angle'

##
# A longitude.
#
# @see https://dogma.dev/Longitude/
class Dogma::Longitude < Dogma::Angle
  MIN = -180
  MAX = 180

  ##
  # @param  [Float, #to_f] degrees (-180..180)
  # @return [void]
  def initialize(degrees)
    degrees = degrees.to_f
    raise ArgumentError, "Longitude bounds are ±180°, but got #{degrees}°" if degrees.abs > MAX
    super(degrees: degrees)
  end
end # Dogma::Longitude
