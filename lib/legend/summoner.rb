module Legend
  class Summoner
    attr_reader :name, :id, :summoner_level

    def initialize(name)
      data = Legend::Client.new.get_summoner(name: sanitize(name))

      @name = data.name
      @id = data.id
      @summoner_level = data.level
    end


    private

    def sanitize name
      name.downcase.downcase.gsub(/\s/, "")
    end

  end
end
