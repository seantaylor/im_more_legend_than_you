module Legend
  class Client

    def initialize
      @client = Taric.client(region: :na)
    end

    def get_summoner(name:)
      summoner_data = client.summoners_by_names(
        summoner_names: Array.wrap(sanitize(name))
      )

      Legend::Summoner.new(
        name: summoner_data[name]['name'],
        id: summoner_data[name]['id'],
        level: summoner_data[name]['summonerLevel']
      )
    end

    def get_stats(summoner_id:)
      ChampionStats.new raw_data: client.ranked_stats(summoner_id: summoner_id)
    end

    private

    attr_reader :client

    def sanitize name
      name.downcase.gsub(/\s/, "")
    end

  end
end
