class Alouette
  attr_reader :la_snippet
  attr_accessor :lines_for_verse

  def initialize
    @lines_for_verse = []
    @la_snippet = [
      "le dos!",
      "la queue!",
      "les pattes!",
      "les ailes!",
      "le cou!",
      "les yeux!",
      "le bec!",
      "la tête!"
    ]
    @alouette_snippet = [
      "Alouette!",
      "Alouette!",
      "A-a-a-ah"
    ]

    @je_snippet = "Je te plumerai "
  end

  def lines_for_verse(verse_number)
    n = 0

    verse_number.times do
      @lines_for_verse << "Et" + " " + "#{@la_snippet[n]}"
      n += 1
    end

    return @lines_for_verse

  end

  def verse(verse_number)
    # 2.times do puts "#{@je_snippet}" + "#{@la_snippet[-(verse_number)]}"
    # end
    # 2.times do puts "Et " + "#{@la_snippet[-(verse_number)]}"
    # end

    n = verse_number - 7
    verse_number.times do puts ("Et " + "#{@la_snippet[n - 1]}") * 2
      n += 1
    end

    puts @alouette_snippet


  end

  def sing
    # this part should be a concatenated string with
    # "Alouette, gentille alouette,
    # Alouette, je te plumerai."
  end

end

song = Alouette.new
puts song.verse(8)
