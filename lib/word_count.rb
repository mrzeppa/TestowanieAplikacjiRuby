class Phrase
    def initialize(phrase)
        @phrase = phrase
    end

    def word_count
        c = Hash.new 0
        @phrase.gsub(/[\n]|^\s/,"")
            .squeeze(" ")
            .split(/[\s,]+/)
            .each{|word| c[word.gsub(/[:.&@\^\$%\!]/,"").gsub(/^'|'$/,"").downcase] +=1}
        c
    end
end