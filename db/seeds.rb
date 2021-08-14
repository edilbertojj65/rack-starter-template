# Add seed data here. Seed your database with `rake db:seed`
puts "Destroy all data"
User.destroy_all
Card.destroy_all

puts "seeding data table users"
#name	last_name	lcd	birth_of_date	t.timestamps	clinic_site	viruses_name

a1 = User.create(name: "Edilberto", last_name: "Jurado", lcd: "31025136", birth_of_date: "03251965", clinic_site: "Smarth Paharmacy", viruses_name: "Covid-19")
a2 = User.create(name: "Juan", last_name: "Jurado", lcd: "31025345", birth_of_date: "06291977", clinic_site: "Smarth Paharmacy", viruses_name: "Covid-19")
a3 = User.create(name: "Alba", last_name: "Gallego", lcd: "31025390", birth_of_date: "05121963", clinic_site: "CVS Paharmacy", viruses_name: "Covid-19")
a4 = User.create(name: "Edgar", last_name: "Buitrago", lcd: "31020398", birth_of_date: "06221957", clinic_site: "CVS Paharmacy", viruses_name: "Covid-19")
a5 = User.create(name: "Martha", last_name: "Sanchez", lcd: "31045398", birth_of_date: "06221960", clinic_site: "CVS Paharmacy", viruses_name: "Covid-19")
a6 = User.create(name: "Luz", last_name: "Jordan", lcd: "31025790", birth_of_date: "05121967", clinic_site: "CVS Paharmacy", viruses_name: "Covid-19")

puts "seeding data table cards"
#user_id	dose	vaccine_Name	date_vaccine	lot_number	t.timestamps


 b1 = Card.create(users_id: a1.id, dose: "1", vaccine_name: "Pfizer", date_vaccine: "04282021", lot_number: "ER8735")
 b2 = Card.create(users_id: a1.id, dose: "2", vaccine_name: "Pfizer", date_vaccine: "05192021", lot_number: "ER8735")
 b3 = Card.create(users_id: a2.id, dose: "1", vaccine_name: "Moderna", date_vaccine: "01252021", lot_number: "MD87355")
 b4 = Card.create(users_id: a2.id, dose: "2", vaccine_name: "Moderna", date_vaccine: "02102021", lot_number: "MD87355")
 b5 = Card.create(users_id: a3.id, dose: "1", vaccine_name: "Johnson & Johnson", date_vaccine: "03282021", lot_number: "JH87359")
 b6 = Card.create(users_id: a3.id, dose: "2", vaccine_name: "Johnson & Johnson", date_vaccine: "04192021", lot_number: "JH87359")
 b7 = Card.create(users_id: a4.id, dose: "1", vaccine_name: "Pfizer", date_vaccine: "07102021", lot_number: "ER8705")
 b8 = Card.create(users_id: a4.id, dose: "2", vaccine_name: "Pfizer", date_vaccine: "07252021", lot_number: "ER8705")
 b9 = Card.create(users_id: a5.id, dose: "1", vaccine_name: "Moderna", date_vaccine: "08042021", lot_number: "ER87357")
b10 = Card.create(users_id: a5.id, dose: "2", vaccine_name: "Moderna", date_vaccine: "08182021", lot_number: "ER87357")
b11 = Card.create(users_id: a6.id, dose: "1", vaccine_name: "Pfizer", date_vaccine: "08102021", lot_number: "ER87335")
b12 = Card.create(users_id: a6.id, dose: "2", vaccine_name: "Pfizer", date_vaccine: "08242021", lot_number: "ER87335")

puts "done"
