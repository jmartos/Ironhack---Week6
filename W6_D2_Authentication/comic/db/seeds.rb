clark = User.create({name: "clark", email: "clark@mail.com", password: "123456789", password_confirmation: "123456789"})
tony = User.create({name: "tony", email: "tony@mail.com", password: "123456789", password_confirmation: "123456789"})
rick = User.create({name: "rick", email: "rick@mail.com", password: "123456789", password_confirmation: "123456789"})

clark.comicons.create([{title: "wathemen", publiser: "vertigo"}])
tony.comicons.create([{title: "dead", publiser: "norma"}, {title: "vendeta", publiser: "vertigo"}])