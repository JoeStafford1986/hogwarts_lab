require_relative('../db/sql_runner')

class Student

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age']
    @house = options['house']
    @house_id = options['house_id'].to_i
  end

end
