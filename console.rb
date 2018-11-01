require('pry')
require('./models/movie')
require('./models/star')
require('./models/casting')

Star.delete_all
Movie.delete_all

movie1 = Movie.new({'title' => 'Titanic', 'genre' => 'romantic comedy'})

star1 = Star.new({'first_name' => 'Kate', 'last_name' => 'Winslet'})

star2 = Star.new({'first_name' => 'Leo', 'last_name' => 'DC'})




star1.save()
star2.save()
# star1.first_name = "Leonardo"
# star1.last_name = "De Caprio"
#
# star1.update()

# star1.delete

movie1.save
p movie1
casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 20})
# binding.pry
# movie1.title = "Inception"
# movie1.genre = "Thriller"
#
# movie1.update

# movie1.delete

casting1.save()
casting1.fee = "30"
casting1.star_id = star2.id
casting1.update
