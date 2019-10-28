class Acronym
    def self.abbreviate(line)
        line.scan(/\b\w/).join.upcase
    end
end

    