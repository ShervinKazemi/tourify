// ignore_for_file: empty_constructor_bodies

class Destination {
  final String name;
  final String image;
  final String description;

  const Destination(this.name, this.image, this.description);
}

List<Destination> fakeData = [
  createDestination(
    "Santorini, Greece",
    "https://lp-cms-production.imgix.net/2024-06/GettyImages-1336913670.jpg?w=1440&h=810&fit=crop&auto=format&q=75",
    "Santorini is one of the most picturesque islands in all of Greece, known for its dramatic cliffs, stunning views of the Aegean Sea, and iconic whitewashed buildings with blue-domed churches. Volcanic activity has shaped Santorini's unique landscape, creating caldera beaches and colorful rock formations. Visitors can explore the charming villages of Oia and Fira, relax on black sand beaches, or hike to the top of the caldera for breathtaking panoramas. Santorini is a popular honeymoon destination and a must-visit for anyone seeking a romantic getaway in Greece.",
  ),
  createDestination(
    "Kyoto, Japan",
    "https://boutiquejapan.com/wp-content/uploads/2013/10/Ginkakuji-Silver-Pavilion-Zen-Temple-Higashiyama-Kyoto-Japan-e1540434846191.png.webp",
    "Kyoto is an ancient city steeped in history and tradition. It was once the imperial capital of Japan and is home to an abundance of temples, shrines, and gardens. Visitors can experience the peace and tranquility of Kiyomizu-dera Temple, marvel at the Kinkaku-ji (Golden Pavilion), or wander through the Arashiyama Bamboo Grove. Kyoto is also a center for traditional Japanese culture, with opportunities to learn about geisha arts, tea ceremonies, and ikebana flower arranging.",
  ),
  createDestination(
    "Machu Picchu, Peru",
    "https://www.peru.travel/Contenido/Noticia/Imagen/en/2052/1.0/Principal/circuits_mapi_Desktop.jpg",
    "Machu Picchu is a 15th-century Inca citadel nestled high in the Andes Mountains. Often referred to as the Lost City of the Incas, it is a UNESCO World Heritage Site and one of the most popular tourist destinations in South America. Visitors can explore the well-preserved ruins of temples, palaces, and terraces, and marvel at the engineering ingenuity of the Inca people. The surrounding scenery is equally impressive, with snow-capped peaks and lush valleys.",
  ),
  createDestination(
    "Venice, Italy",
    "https://www.fodors.com/wp-content/uploads/2023/06/0-HERO-istockphoto-1388018793.jpg",
    "Venice is a unique city built on canals. It is famous for its romantic gondola rides, stunning architecture, and vibrant art scene. Visitors can explore St. Mark's Square, admire the Doge's Palace, or take a boat tour through the canals. Venice is also a center for Italian cuisine, with a wide variety of seafood dishes and regional specialties to try.",
  ),
  createDestination(
    "Yellowstone, USA",
    "https://www.visittheusa.com/sites/default/files/styles/hero_l/public/images/hero_media_image/2016-10/Yellowstone.jpg?h=2a29b199&itok=SoB8AKTf",
    "Yellowstone National Park is the first national park in the United States and a UNESCO World Heritage Site. It is famous for its geothermal features, including geysers, hot springs, and mudpots. Visitors can also see a variety of wildlife, such as bison, elk, wolves, and grizzly bears. The park has a variety of hiking trails, lakes, and waterfalls to explore.",
  ),
  createDestination(
    "Swiss Alps",
    "https://deih43ym53wif.cloudfront.net/large_zermatt-matterhorn-switzerland-shutterstock_1298208013_44fea015e5.jpeg",
    "The Swiss Alps are a mountain range that stretches across Switzerland and into neighboring countries. They are a popular destination for hiking, skiing, and other outdoor activities. The Alps are also home to charming villages, traditional chalets, and stunning scenery. Visitors can enjoy breathtaking views of snow-capped peaks, lush valleys, and crystal-clear lakes.",
  ),
  createDestination(
    "Amalfi Coast, Italy",
    "https://www.travelandleisure.com/thmb/pqFqLzMwubb0es_Ubg9o-KRpskk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/best-time-to-visit-AMALFI0622-e442428423b94e41a3817f3192ba0c2b.jpg",
    "The Amalfi Coast is a stunning stretch of coastline in southern Italy. It is famous for its dramatic cliffs, picturesque villages, and beautiful beaches. Visitors can explore the towns of Positano, Amalfi, and Ravello, take a boat tour along the coast, or hike the Path of the Gods for panoramic views. The Amalfi Coast is a popular destination for relaxation, luxury, and delicious Italian food.",
  ),
  createDestination(
    "Iceland",
    "https://cdn.britannica.com/06/171306-050-C88DD752/Aurora-borealis-peninsula-Snaefellsnes-Iceland-March-2013.jpg",
    "Iceland is a land of fire and ice, with glaciers, volcanoes, waterfalls, and hot springs. It is a popular destination for nature lovers and adventure seekers. Visitors can go glacier hiking, explore ice caves, see the Northern Lights, or bathe in geothermal pools. Iceland also has a unique culture and history, with a strong emphasis on folklore and Viking traditions.",
  ),
  createDestination(
    "Dubai, UAE",
    "https://ralphdeal.s3.amazonaws.com/wp-content/uploads/2024/05/UAE_Blog-321.jpg",
    "Dubai is a modern metropolis in the United Arab Emirates. It is known for its luxurious hotels, world-class shopping, and innovative architecture. Visitors can visit the Burj Khalifa, the tallest building in the world, go skiing at an indoor ski resort, or shop at the Dubai Mall. Dubai is also a center for culture and entertainment, with a variety of museums, art galleries, and theme parks.",
  ),
  createDestination(
    "Paris, France",
    "https://www.ciee.org/sites/default/files/images/2023-05/paris-tower-aerial-view.jpg",
    "Paris is the City of Lights, known for its romantic atmosphere, iconic landmarks, and world-class museums. Visitors can climb the Eiffel Tower, explore the Louvre Museum, or stroll through the Jardin du Luxembourg. Paris is also a fashion capital, with a wide variety of shops and boutiques to explore. The city is known for its delicious food and wine, and visitors can enjoy a variety of cafes, restaurants, and bars.",
  ),
  createDestination(
    "Rio de Janeiro, Brazil",
    "https://cdn.prod.website-files.com/5bb2cb199758ce1535f85891/5ea6d21ffadd3c7c97d7d957_agustin-diaz-7F65HDP0-E0-unsplash%20copy.jpg",
    "Rio de Janeiro is a vibrant city known for its stunning beaches, lively atmosphere, and annual Carnival celebration. Visitors can relax on Copacabana or Ipanema Beach, hike to the top of Christ the Redeemer statue, or explore the Santa Teresa neighborhood. Rio de Janeiro is also a center for music and dance, with a variety of samba clubs and live music venues.",
  ),
  createDestination(
    "New Zealand",
    "https://th-thumbnailer.cdn-si-edu.com/e-nokMMxOzmm7slhV3g2qF5fxSQ=/fit-in/1600x0/filters:focal(2626x1463:2627x1464)/https://tf-cmsv2-journeys-media.s3.amazonaws.com/filer/ef/06/ef0626b3-5efb-42ee-bfc0-5580f695a654/nzl_queenstown_lakewakatip_ist_000038346736_full_lr_copy.jpg",
    "New Zealand is a land of stunning landscapes from mountains to beaches. Famous for Lord of the Rings filming locations and Maori culture.",
  ),
];

Destination createDestination(String name, String image, String description) {
  return Destination(name, image, description);
}
