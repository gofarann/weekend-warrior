class Alouette

  class << self
    attr_accessor :lines_for_verse, :la_snippet, :je_snippet , :lines_for_verse

    @@la_snippet = # could be constant
    [ "la tête!",
      "le bec!",
      "les yeux!",
      "le cou!",
      "les ailes!",
      "les pattes!",
      "la queue!",
      "le dos!"]

      @@je_snippet = "Je te plumerai "

      def lines_for_verse(verse_number)
        @@lines_for_verse = []

        index = verse_number
        loop_number = verse_number + 1

        loop_number.times do
          @@lines_for_verse << "Et "+ "#{@@la_snippet[index]}"
          index -= 1
        end

        return @@lines_for_verse
      end

      def verse(verse_number)
        verse = []

        verse << ("Je te plumerai" + " " + "#{@@la_snippet[verse_number]}").delete!('!') + "."
        verse << ("Je te plumerai" + " " + "#{@@la_snippet[verse_number]}").delete!('!') + "."

        Alouette.lines_for_verse(verse_number).each do |phrase|
          verse << "#{phrase}"
          verse << "#{phrase}"
        end

        verse <<  "Alouette!\n" +
        "Alouette!\n" +
        "A-a-a-ah"

        return verse.join("\n")
      end

      def sing
        song = []
        verse_number = 0

        8.times do
          song << "Alouette, gentille alouette,"
          song << "Alouette, je te plumerai.\n"

          song <<  "#{Alouette.verse(verse_number)}\n"
          verse_number += 1
        end

        song <<  "Alouette, gentille alouette,"
        song << "Alouette, je te plumerai."

        return song.join("\n")

      end

  end
end

  # Alouette.sing.class
  # puts Alouette.verse(2)
  # puts Alouette.sing
