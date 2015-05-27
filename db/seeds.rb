# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create(:title => 'Programing Ruby 1.9',
              :description => 
              %{<p>
                  ruby is the fastest growing and most exciting dynamic language
                  out there. if you need to get working programs delivered fast,
                  you should add Ruby to your toolbox.
                </p>},
              :image_url => 'ruby.jpg',
              :price => 49.50
              )

Product.create(:title => 'rtp programs',
              :description => 
              %{<p>
                  ruby is the fastest growing and most exciting dynamic language
                  out there. if you need to get working programs delivered fast,
                  you should add Ruby to your toolbox.
                </p>},
              :image_url => 'rtp.jpg',
              :price => 49.50
              )

Product.create(:title => 'rails learning 4.2',
              :description => 
              %{<p>
                  ruby is the fastest growing and most exciting dynamic language
                  out there. if you need to get working programs delivered fast,
                  you should add Ruby to your toolbox.
                </p>},
              :image_url => 'cs.jpg',
              :price => 49.50
              )


