puts "🌱 Seeding data..."
Role.create(character_name: "Happy")
Role.create(character_name: "Grumpy")
Role.create(character_name: "Dopey")
Role.create(character_name: "Sneezy")
Role.create(character_name: "Nosey")

roles = Role.all.map{ |r| r.id }

Audition.create(actor:"Laura", location:"LA", phone:"999-333-333", hired:true, role_id: roles[3])
Audition.create(actor:"Drew", location:"Denver", phone:"333-333-333", hired:true, role_id: roles[2])
Audition.create(actor:"Rick", location:"New York", phone:"777-333-333", hired:true, role_id: roles[1])
Audition.create(actor:"Cynthia", location:"New York", phone:"777-333-333", hired:false, role_id: roles[0])
Audition.create(actor:"Cynthia", location:"New York", phone:"777-333-333", hired:false, role_id: roles[3])
Audition.create(actor:"Jack", location:"Hawaii", phone:"777-333-333", hired:false, role_id: 17)
Audition.create(actor:"Phil", location:"Hawaii", phone:"777-333-333", hired:false, role_id: 17)






puts "🌱 Done seeding!"
