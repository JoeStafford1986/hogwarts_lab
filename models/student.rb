require_relative('../db/sql_runner')
require_relative('house')

class Student


attr_reader :id, :first_name, :last_name, :age, :house, :house_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @age = options['age']
    @house = options['house']
    @house_id = options['house_id']

  end


  def save()
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      age,
      house,
      house_id
    )
    VALUES
    (
      $1, $2, $3, $4, $5
    )
    RETURNING *"
    values = [@first_name, @last_name, @age, @house, @house_id]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

end
