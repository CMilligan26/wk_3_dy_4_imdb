require('pry')
require('./models/movie')
require('./models/star')
require('./models/casting')

Star.delete_all

movie1 = Movie.new({'title' => 'Titanic', 'genre' => 'romantic comedy'})

star1 = Star.new({'first_name' => 'Kate', 'last_name' => 'Winslet'})

# casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => 20})

star1.save()
