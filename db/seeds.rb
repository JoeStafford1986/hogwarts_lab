require_relative('../models/student')
require_relative('../models/house')


house1 = House.new({
  'name' => 'Gryffindor'
  })
house1.save()

house2 = House.new({
  'name' => 'Ravenclaw'
  })
house2.save()

house3 = House.new({
  'name' => 'Hufflepuff'
  })
house3.save()

house4 = House.new({
  'name' => 'Slytherin'
  })
house4.save()

student1 = Student.new({
  'first_name' => 'Joe',
  'last_name' => 'Stafford',
  'age' => 30,
  'house' => 'Ravenclaw',
  'house_id' => house2.id.to_i
  })
  student1.save()

  student2 = Student.new({
    'first_name' => 'Hannah',
    'last_name' => 'Green',
    'age' => 20,
    'house' => 'Gryffindor',
    'house_id' => house1.id.to_i
    })
    student2.save()
