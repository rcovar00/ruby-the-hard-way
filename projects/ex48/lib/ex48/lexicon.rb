class Lexicon

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end

  def self.scan(direction)
    directions = ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
    verbs = ['go', 'stop', 'kill', 'eat']
    stops = ['the', 'in', 'of', 'from', 'at', 'it']
    nouns = ['door', 'bear', 'princess', 'cabinet']

    sentence = []
    words = direction.split
    words.each do |word|
      numb = convert_number(word)

      if directions.include? word
        sentence.push(['direction', word])
      elsif verbs.include? word
        sentence.push(['verb', word])
      elsif stops.include? word
        sentence.push(['stop', word])
      elsif nouns.include? word
        sentence.push(['noun', word])
      elsif numb
        sentence.push(['number', numb])
      else
        sentence.push(['error', word])
      end
    end

    return sentence
  end

end
