require_relative('../models/student')
require_relative('../models/house')

student1 = Student.new({
  'first_name' => 'Joe',
  'last_name' => 'Stafford',
  'age' => 30,
  'house' => 'Ravenclaw'
  })

student2 = Student.new({
  'first_name' => 'Hannah',
  'last_name' => 'Green',
  'age' => 20,
  'house' => 'Gryffindor'
  })

house1 = House.new({
  'name' => 'Gryffindor'
  })

house2 = House.new({
  'name' => 'Ravenclaw'
  })

house3 = House.new({
  'name' => 'Hufflepuff'
  })

house4 = House.new({
  'name' => 'Slytherin'
  })
