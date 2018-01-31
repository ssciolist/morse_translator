class Translator
  attr_reader :dictionary,
              :message

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def record(message)
    @message = message.downcase
  end

  def translate
    array = @message.split(//)
    translation = array.map do |letter|
      @dictionary[letter]
    end
    translation.join()
  end

  def from_file(file_name)
    newfile = File.new(file_name)
    newfile.open.each do |line|
      line.downcase
      line_array = line.split(//)
      line_translation = line_array.map do |letter|
        @dictionary[letter]
      end
    end
    line_translation.join()
  end

end
