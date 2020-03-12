import 'product.dart';

final List<Product> products = ProductsRepository.loadProducts(Category.all);
final List<Product> favoriteProducts = List<Product>();

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product> [
      Product(
        category: Category.Busan,
        id: 0,
        name: 'Hotel Commodore',
        location: '151, Junggu-ro, Jung-gu, Busan, South Korea',
        phoneNum: '051-466-9101',
        starRate: 5,
        description: """Featuring a sauna, Hotel Commodore is located in Busan and showcases views of Port of Busan. Guests also have exclusive access to the on-site Sauna and Health Town. 
There are a variety of facilities at Commodore Hotel Busan, such as free Wi-Fi and complimentary private on site parking. Corporate amenities include a 24-hour business centre and meeting rooms.
Guests staying at Hotel Commodore can enjoy the stylish rooms that offer a telephone and bottled water. There are also multiple rooms especially designed for families. 
Commodore Hotel Busan boasts convenient dining options, including international cuisines at Commodore Buffet and European food at Admiral Yi. Eateries at the hotel include The Year of Horse and Korean Restaurants. 
        """
      ),
      Product(
        category: Category.Busan,
        id: 1,
        name: 'Paradise Hotel Busan',
        location: '296, Haeundaehaebyeon-ro, Haeundae-gu, Busan, South Korea',
        phoneNum: '051-742-2121',
        starRate: 5,
        description: '''Situated in Haeundae-gu, Paradise Hotel Busan offers 5-star accommodation and an all-inclusive meal plan, free Wi-Fi and an infinity pool. It is also a short stroll from Haeundae Beach and Haeundae Market, and is close to many of the area's well-known attractions.   
Guests of Paradise Busan can start their day at Ocean Spa Cimer, or enjoy the many leisure facilities, including a driving range. Guests can also enjoy free private parking on site. It also has its very own spa and wellness centre, Sundari Spa.
All rooms are air conditioned and equipped with a coffee maker, a refrigerator and a plug & play panel. They provide slippers, a private bathroom and a flat-screen TV.   
        '''
      ),
      Product(
        category: Category.Busan,
        id: 2,
        name: 'Kent Hotel Gwangalli by Kensington',
        location: '229, Gwanganhaebyeon-ro, Suyeong-gu, Busan, South Korea',
        phoneNum: '1670-7464',
        starRate: 4,
        description: '''Kent Hotel Gwangalli by Kensington is located in Busan and is close to We've the Zenith. It also provides free Wi-Fi, a 24-hour reception and luggage storage.   
Brailed elevators and a wake-up service are just some of the convenient services at the hotel. In addition, the multilingual staff can offer tips and local knowledge. 
This hotel provides rooms with an en suite bathroom, air conditioning and a TV. They all include a mini bar, slippers and tea and coffee making facilities. 
Guests of Kent Hotel Gwangalli by Kensington can enjoy breakfast each morning at Ashley W, as well as dinner at SOOSA in the evening. Each evening, guests are welcome to enjoy a drink in the comfortable lounge bar. 
        '''
      ),
      Product(
        category: Category.Busan,
        id: 3,
        name: 'Hilton Busan',
        location: '268-32, Gijanghaean-ro, Gijang-eup , Gijang-gun, Busan, South Korea',
        phoneNum: '051-509-1111',
        starRate: 5,
        description: '''Situated in Busan, Hilton Busan provides 5-star accommodation, as well as a sauna. It also features a butler service, a ballroom and an executive floor. 
There are a range of amenities on offer to those staying at the hotel, such as a coffee bar, 24-hour room service and a sun tanning bed. Guests can also enjoy free private parking on site.    
The rooms are air conditioned and include wireless internet access, a mini bar and a refrigerator. Hot drinks can be made with the complimentary tea and coffee supplies, and savoured in the comfort of the room's seating area. 
        '''
      ),
      Product(
          category: Category.Busan,
          id: 4,
          name: 'Gwangan Hound Hotel',
          location: '268-32, Gijanghaean-ro, Gijang-eup , Gijang-gun, Busan, South Korea',
          phoneNum: '051-509-1111',
          starRate: 2,
          description: '''Situated in Busan, Hilton Busan provides 5-star accommodation, as well as a sauna. It also features a butler service, a ballroom and an executive floor. 
There are a range of amenities on offer to those staying at the hotel, such as a coffee bar, 24-hour room service and a sun tanning bed. Guests can also enjoy free private parking on site.    
The rooms are air conditioned and include wireless internet access, a mini bar and a refrigerator. Hot drinks can be made with the complimentary tea and coffee supplies, and savoured in the comfort of the room's seating area. 
        '''
      ),
      Product(
          category: Category.Busan,
          id: 5,
          name: 'Park Hyatt Busan',
          location: '51, Marine city 1-ro, Haeundae-gu, Busan, South Korea',
          phoneNum: '051-990-1234',
          starRate: 5,
          description: '''This modern hotel is located in Haeundae-gu, a short walk from We've the Zenith. It also offers free Wi-Fi, a swimming pool and a sauna.
Guests can enjoy a range of massage treatments and beauty therapy at the on-site spa, Lumi Spa. Guests can also enjoy free private parking on site. It also provides useful facilities for business meetings and events.   
The rooms are air conditioned and feature a refrigerator, a coffee maker and a plug & play panel. Bathrooms are equipped with necessities such as bathrobes and slippers. 
          '''
      ),
      Product(
          category: Category.Seoul,
          id: 6,
          name: 'Shilla Stay Gwanghwamun',
          location: '71, Sambong-ro, Jongno-gu, Seoul, South Korea',
          phoneNum: '02-123-1234',
          starRate: 4,
          description: '''Situated in Seoul, Shilla Stay Gwanghwamun is a short walk from Gwanghwamun Plaza and features a rooftop terrace. Guests also have access to complimentary Wi-Fi and on-site parking. 
This 4-star hotel provides meeting rooms, a coffee bar and a ballroom. The front desk operates around the clock and the friendly staff can suggest places to visit and provide other tourist information. 
All rooms are air conditioned, soundproofed and equipped with a marble bathroom, luxury linen and a coffee maker. Each includes a private bathroom with luxury toiletries, bathrobes and a rain shower. 
          '''
      ),
      Product(
          category: Category.Seoul,
          id: 7,
          name: 'Shilla Stay Yeoksam',
          location: '517, Eonju-ro, Gangnam-gu, Seoul, South Korea',
          phoneNum: '02-453-1464',
          starRate: 3,
          description: '''Located in Gangnam-gu, this hotel is a 10-minute walk to Seolleung Park, LG Gangnam Tower and Seonjeongneung. Those staying at the property also have access to free Wi-Fi and on-site parking. 
This 3-star hotel offers meeting rooms, a 24-hour reception and a coffee bar. A fitness centre can be readily accessed by those wanting to keep active while away. 
Shilla Stay Yeoksam features air conditioned rooms with luxury toiletries and a flat-screen TV. They all have tea and coffee making facilities, a private bathroom and a refrigerator. 
          '''
      ),
      Product(
          category: Category.Seoul,
          id: 8,
          name: 'Hotel Park Habio',
          location: '111, Songpa-daero, Songpa-gu, Seoul, South Korea',
          phoneNum: '02-3222-1029',
          starRate: 3,
          description: '''Hotel Park Habio is set in Seoul and is a short walk from Jangji Subway Station (Line 8). It provides a fitness centre, as well as free Wi-Fi, a coffee bar and meeting rooms. 
There are a range of amenities on offer to guests of the hotel, such as a currency exchange, a 24-hour reception and a convention center. Guests can also enjoy free public parking on site. 
Hotel Park Habio features 472 air conditioned rooms. Hot drinks can be brewed with the provided coffee and tea supplies. 
          '''
      ),

    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
