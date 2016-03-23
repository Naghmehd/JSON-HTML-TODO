class Task
  attr_accessor :body, :id, :completed
  def initialize(id, body, complete)
    @body = body
    @id = id
    @completed = completed
  end

  def to_json(_ = nil)
    {
      body: body,
      id: id
    }.to_json
  end

  def completed?
    @completed == true
  end
end
