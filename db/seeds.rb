Heroine.destroy_all
Power.destroy_all

# powers = [
#   {name:"super strength", description: "gives the wielder super-human strengths" },
#   {name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
#   {name:"super human senses", description: "allows the wielder to user her senses at a super-human level" },
#   {name:"elasticity", description: "can stretch the human body to extreme lengths" }
# ]
#
# powers.each {|power| Power.create(power)}
#
# heroines = [
#   {name: "Kamala Khan", super_name: "Ms. Marvel"},
#   {name: "Doreen Green", super_name: "Squirrel Girl" },
#   {name:"Gwen Stacy", super_name:"Spider-Gwen" },
#   {name:"Janet Van Dyne", super_name:"The Wasp" },
#   {name:"Wanda Maximoff", super_name:"Scarlet Witch" },
#   {name:"Carol Danvers", super_name:"Captain Marvel" },
#   {name:"Jean Grey", super_name:"Dark Phoenix" },
#   {name:"Ororo Munroe", super_name:"Storm" },
#   {name:"Kitty Pryde", super_name:"Shadowcat" },
#   {name:"Elektra Natchios", super_name:"Elektra" }
# ]
# heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# heroines.each { |heroine| Heroine.create(heroine) }


power1 = Power.create(name:"super strength", description: "gives the wielder super-human strengths" )
power2 = Power.create(name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
power3 = Power.create(name:"super human senses", description: "allows the wielder to user her senses at a super-human level")
power4 = Power.create(name:"elasticity", description: "can stretch the human body to extreme lengths")

heroine1 = Heroine.create(name: "Kamala Khan", super_name: "Ms. Marvel", power_id: power1.id)
heroine2 = Heroine.create(name: "Doreen Green", super_name: "Squirrel Girl", power_id: power2.id)
heroine3 = Heroine.create(name:"Gwen Stacy", super_name:"Spider-Gwen", power_id:power3.id)
heroine4 = Heroine.create(name:"Janet Van Dyne", super_name:"The Wasp", power_id: power4.id)
heroine5 = Heroine.create(name:"Wanda Maximoff", super_name:"Scarlet Witch", power_id: power1.id)
heroine6 = Heroine.create(name:"Carol Danvers", super_name:"Captain Marvel", power_id: power2.id)
heroine7 = Heroine.create(name:"Jean Grey", super_name:"Dark Phoenix", power_id:power3.id)
heroine8 = Heroine.create(name:"Ororo Munroe", super_name:"Storm", power_id: power4.id)
heroine9 = Heroine.create(name:"Kitty Pryde", super_name:"Shadowcat", power_id: power3.id)
heroine10 = Heroine.create(name:"Elektra Natchios", super_name:"Elektra", power_id: power2.id)
# ---------------
# POWERFUL HEROINES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate heroine with a power!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
# ---------------
