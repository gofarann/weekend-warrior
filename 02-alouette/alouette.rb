class Alouette

  class << self
    attr_accessor :lines_for_verse, :la_snippet, :je_snippet, :refrain , :lines_for_verse

    @@la_snippet =
    [ "la tête!",
      "le bec!",
      "les yeux!",
      "le cou!",
      "les ailes!",
      "les pattes!",
      "la queue!",
      "le dos!"]

      @@alouette_snippet = [
        "Alouette!",
        "Alouette!",
        "A-a-a-ah"
      ]

      @@je_snippet = "Je te plumerai "

      @@refrain = ["Alouette, gentille alouette",
        "Alouette, je te plumerai.\n"]


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

          puts ("Je te plumerai" + " " + "#{@@la_snippet[verse_number]}")
          puts ("Je te plumerai" + " " + "#{@@la_snippet[verse_number]}")

          Alouette.lines_for_verse(verse_number).each do |phrase|
            puts "#{phrase}\n" * 2
          end

          puts @@alouette_snippet


        end

        def sing
          verse_number = 0

          8.times do
            puts "Alouette, gentille alouette,"
            puts "Alouette, je te plumerai."
            puts "\n"

            puts Alouette.verse(verse_number)
            verse_number += 1
          end
          puts "Alouette, gentille alouette,"
          puts "Alouette, je te plumerai.\n"
        end
      end

    end

    # Alouette.sing.class
    puts Alouette.verse(3).class
