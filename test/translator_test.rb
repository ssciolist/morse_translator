require "minitest"
require "minitest/pride"
require "minitest/autorun"
require "./lib/translator"

class Test_Translator < Minitest::Test

  def test_translator_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_translator_record_message
    translator = Translator.new
    translator.record("Timmy's in the well")
    assert_equal "Timmy's in the well", translator.message
  end

end
