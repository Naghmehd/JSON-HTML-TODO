Class Task
  attr_accessor :body, :field, :id
  def initialize(body, field, id)
    @body = body
    @field = filed
    @id = id
  end

  def to_json(_ = nil)
    {
      body: body,
      field: field,
      id: id
    }.to_json
  end

  def Complete?
    @complete = false
  end
end
