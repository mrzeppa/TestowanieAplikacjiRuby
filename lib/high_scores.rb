class HighScores
    def initialize(scores)
        @scores = scores
    end

    def scores
        return @scores
    end

    def latest
        return @scores.last
    end

    def personal_best
        return @scores.max
    end

    def personal_top_three
        return @scores.max(3)
    end

    def latest_is_personal_best?
        personal_best == latest
    end

end
