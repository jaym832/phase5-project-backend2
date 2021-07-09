# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Favorite.destroy_all
Pet.destroy_all
Rehoming.destroy_all

#adopting a pet
u1=User.create(username:'jaym832',password: 'pass123',email: 'jjmarin777@gmail.com',role:'client',f_name:'jj',l_name: 'marin',zipcode:'77441')
p1= Pet.create(name:'brock',animal_type:'dog',breed:'pitbull',age:"young",description:"2 year old pitbull",rehome:false,gender:'Male')
a1= Favorite.create(user_id:u1.id,pet_id:p1.id,status:'approved')

#putting a pet up for rehome
u2=User.create(username:'jaym77',password: 'pass123',email: 'jj@gmail.com',role:'client',f_name:'jay',l_name: 'martin',zipcode:'77564')
p2= Pet.create(name:'jojo',breed:'terrier',animal_type:'dog',age:'young',description:"1 year old terrier",rehome:true,gender:'Male')
a2= Rehoming.create(user_id:u2.id,pet_id:p2.id,status:'verified')
