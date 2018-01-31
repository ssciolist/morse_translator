require "minitest"
require "minitest/pride"
require "minitest/autorun"
require "./lib/translator"

class Test_Translator < Minitest::Test

  def test_translator_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end
end
