Cocktail.destroy_all
Ingredient.destroy_all


cocktail = Cocktail.new(name: "Old Fashioned")
url =  "http://www.seriouseats.com/images/2014/11/20141104-cocktail-party-old-fashioneds-holiday-vicky-wasik-3.jpg"
cocktail.remote_picture_url = url
cocktail.save

cocktail = Cocktail.new(name: "Daiquiri")
url =  "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-daiquiri.jpg"
cocktail.remote_picture_url = url
cocktail.save


cocktail = Cocktail.new(name: "Margarita")
url =  "http://www.seriouseats.com/images/2015/03/20150323-cocktails-vicky-wasik-margarita.jpg"
cocktail.remote_picture_url = url
cocktail.save

ingredients = %w(lemon ice mint leaves redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }
