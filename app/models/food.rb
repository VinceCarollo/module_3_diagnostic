class Food
  attr_reader :ndb_number,
              :name, :category,
              :data_source,
              :manufacturer

  def initialize(data)
    @ndb_number   = data[:ndbno]
    @name         = data[:name]
    @category     = data[:group]
    @data_source  = data[:ds]
    @manufacturer = data[:manu]
  end
end
