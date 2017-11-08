# frozen_string_literal: true

require "test_helper"

class AD::RecordFinderTest < Minitest::Test
  def setup
    setup_ad_for_built_in_server
  end

  def test_find_by_id
    finder = AD::RecordFinder.new
    finder.find_by_id("hh153")
    assert ["Hilda Hatfield"], finder.result[0]["cn"]
  end
end
