class Series
    def initialize(series)
        @series = series
    end

    def slices(x)
        raise ArgumentError if x > @series.size
        return @series.chars.each_cons(x).map(&:join);
    end
end