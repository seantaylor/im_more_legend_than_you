module Legend
  class Summoner
    attr_reader :name, :id, :summoner_level

    def initialize(name)
      data = Legend::Client.new.get_summoner(name: name)

      @name = data.name
      @id = data.id
      @summoner_level = data.level
    end

  end
end
