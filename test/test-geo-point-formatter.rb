# Copyright (C) 2014 Droonga Project
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License version 2.1 as published by the Free Software Foundation.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

require "droonga/message-pack-packer/geo-point-formatter"

class GeoPointFormatterTest < Test::Unit::TestCase
  def test_format
    geo_point_class = Class.new do
      def initialize(latitude, longitude)
        @latitude = latitude
        @longitude = longitude
      end

      def to_s
        "<#{@latitude}x#{@longitude}>"
      end
    end

    latitude = 35.681382
    longitude = 139.766084
    tokyo = geo_point_class.new(latitude, longitude)
    assert_equal("<#{latitude}x#{longitude}>", format(tokyo))
  end

  private
  def format(geo_point)
    Droonga::MessagePackPacker::GeoPointFormatter.format(geo_point)
  end
end
