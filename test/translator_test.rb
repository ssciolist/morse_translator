require "minitest"
require "minitest/pride"
require "minitest/autorun"
require "./lib/translator"
require "pry"

class Test_Translator < Minitest::Test

  def test_translator_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_translator_record_message
    translator = Translator.new
    translator.record("Timmy in the well")
    assert_equal "timmy in the well", translator.message
  end

  def test_translator_translates
    translator = Translator.new
    translator.record("Timmy in the well")
    translator.translate
    assert_equal "-..-----.-- ..-. -..... .--..-...-..", translator.translate
  end
end
