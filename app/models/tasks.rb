class Task
  attr_accessor :body, :field, :id, :complete
  def initialize(body, field, id, complete)
    @body = body
    @field = filed
    @id = id
    @complete = complete
  end

  def to_json(_ = nil)
    {
      body: body,
      field: field,
      id: id
    }.to_json
  end

  def complete?
    @complete = false
  end
end
