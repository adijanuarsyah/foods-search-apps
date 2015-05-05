# Food names i get from http://eatingatoz.com/food-list/

# [ "apples", "avocado", "alfalfa", "almond", "arugala", "artichoke", "applesauce", "asian noodles ", "antelope", "ahi tuna", "albacore tuna", "apple juice", "avocado roll", "bruscetta", "bacon", "black beans", "bagels", "baked beans", "bbq", "bison", "barley", "beer", "bisque", "bluefish", "bread", "broccoli", "buritto", "babaganoosh", "cabbage", "cake", "carrots", "carne asada", "celery", "cheese", "chicken", "catfish", "chips", "chocolate", "chowder", "clams", "coffee", "cookies", "corn", "cupcakes", "crab", "curry", "cereal", "chimichanga", "dates", "dips", "dumplings", "donuts", "eggs", "enchilada", "eggrolls", "english muffins", "edimame", "eel sushi", "fajita", "falafel", "fish", "franks", "fondu", "french toast", "french dip", "garlic", "ginger", "gnocchi", "goose", "granola", "grapes", "green beans", "guancamole", "gumbo", "grits", "graham crackers", "ham", "halibut", "hamburger", "honey", "huenos rancheros", "hash browns", "hot dogs", "haiku roll", "hummus", "ice cream", "irish stew", "indian food", "italian bread", "jambalaya", "jelly", "jerky", "kale", "kabobs", "ketchup", "kiwi", "kindey beans", "kingfish", "lobster", "lamb", "linguine", "lasagna", "meatballs", "moose", "milk", "milkshake", "noodles", "ostrich", "pizza", "pepperoni", "porter", "pancakes", "quesadilla", "quiche", "reuben", "spinach", "spaghetti", "tater tots", "toast", "venison", "waffles", "wine", "walnuts", "yogurt", "ziti", "zucchini" ].each do |food_name|
#     Cibo.create!({:name => food_name.titleize})
# end

#Top food list from http://en.wikipedia.org/wiki/List_of_Indonesian_dishes
topfood_list = [
  [ "Nasi Goreng", "ind"],
  [ "Bakso", "ind"],
  [ "Ayam Bakar", "ind"],
  [ "Ikan Bakar", "ind"],
  [ "Ayam Goreng", "ind"],
  [ "Bakwan", "ind"],
  [ "Bebek Goreng", "ind"],
  [ "Betutu", "ind"],
  [ "Bubur Ayam", "ind"],
  [ "Bubur Manado", "ind"],
  [ "Cap Cai", "ind"],
  [ "Gado Gado", "ind"],
  [ "Gudeg", "ind"],
  [ "Gulai", "ind"],
  [ "Iga penyet", "ind"],
  [ "Ketoprak", "ind"],
  [ "Kwetiau", "ind"],
  [ "Laksa", "ind"],
  [ "Mie Aceh", "ind"],
  [ "Mie Ayam", "ind"],
  [ "Mie Goreng", "ind"],
  [ "Bakmi", "ind"],
  [ "Mie Kocok", "ind"],
  [ "Nasi Padang", "ind"],
  [ "Oncom", "ind"],
  [ "Pempek", "ind"],
  [ "Pepes", "ind"],
  [ "Rendang", "ind"],
  [ "Sate", "ind"],
  [ "Semur", "ind"],
  [ "Tekwan", "ind"],
  [ "Tempe", "idn"],
  [ "Tumpeng", "ind"],
  [ "Potato Chips", "inte"],
  [ "Tacos", "inte"],
  [ "Ketchup", "inte"],
  [ "French Toast", "inte"],
  [ "Lasagna", "inte"],
  [ "Kebab", "inte"],
  [ "Lobster", "inte"],
  [ "Donuts", "inte"],
  [ "Ice Cream", "inte"],
  [ "Hamburger", "inte"],
  [ "Sushi", "inte"],
  [ "Chocolate", "inte"],
  [ "Kabobs", "inte"],
  [ "Pizza", "inte"],
  [ "Spaghetti", "inte"],
  [ "Bisque", "inte"],
  [ "Bbq", "inte"],
  [ "Hot Dogs", "inte"],
  [ "Pepperoni", "inte"]
]

topfood_list.each do |food|
  TopFood.create( :name => food[0], :country => food[1])
end