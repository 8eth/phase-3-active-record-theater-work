#create roles
r1 = Role.create({character_name: "Romeo"})
r2 = Role.create({character_name: "Juliette"})
r3 = Role.create({character_name: "Spongebob"})
r4 = Role.create({character_name: "Patrick"})
r5 = Role.create({character_name: "Sally"})


#create auditions
Audition.create({actor:"a", location:"location 1", phone:111-111-1111, hired:false, role_id:r1.id})
Audition.create({actor:"b", location:"location 2", phone:333-111-1111, hired:false, role_id:r1.id})
Audition.create({actor:"c", location:"location 3", phone:444-111-1111, hired:false, role_id:r2.id})
Audition.create({actor:"d", location:"location 2", phone:555-111-1111, hired:false, role_id:r2.id})


# #Faker version
# #Roles need to exist first

# puts "wiping previous data"
# Role.destroy_all 
# Audition.destroy_all

# puts "Resetting Faker gem"
# Faker::Movies.StarWars.unique.clear
# Faker::FunnyName.unique.clear

# puts "Creating Roles"
# 5.times {
#     Role.create(character_name: Faker::Movies::StarWars.unique.character)
# }

# puts "Creating auditions"
# 10.times {
#     actor = Faker::FunnyName.unique.role
#     location = Faker::Address.city
#     phone = Faker::Number(digits: 10)
#     role = Role.all.sample
#     Audition.create(actor: actor, location: location, phone: phone, role: role)
# }