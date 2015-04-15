module Legend
  class Summoner
    include Comparable

    attr_reader :name, :id, :summoner_level

    def initialize(name)
      data = Legend::Client.new.get_summoner(name: sanitize(name))

      @name = data.name
      @id = data.id
      @summoner_level = data.level
    end

    def <=> summoner
      (kills/games_played) <=> (summoner.kills/summoner.games_played)
    end

    def kills
      stats.kills
    end

    def deaths
      stats.deaths
    end

    def assists
      stats.assists
    end

    def games_played
      stats.games_played
    end

    private

    def sanitize name
      name.downcase.gsub(/\s/, "")
    end

    def stats
      @stats ||= Legend::Client.new.get_stats(summoner_id: id)
    end

  end
end
