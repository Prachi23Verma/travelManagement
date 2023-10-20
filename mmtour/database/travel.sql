phpMyAdmin SQL Dump
version 5.0.4
https://www.phpmyadmin.net/

Host: localhost:3307
Generation Time: Oct 14, 2021 at 03:21 PM
Server version: 10.4.17-MariaDB
PHP Version: 8.0.1
--krna h uppar

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT ;
!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS ;
!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION ;
!40101 SET NAMES utf8mb4 ;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `ffirst` varchar(20) NOT NULL,
  `flast` varchar(20) NOT NULL,
  `femail` varchar(30) NOT NULL,
  `city` varchar(20) NOT NULL,
  `fphone` int(15) NOT NULL,
  `fdesti` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `ffirst`, `flast`, `femail`, `city`, `fphone`, `fdesti`) VALUES
(1, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Goa'),
(2, 'kiran', 'Naik', 'kirannaik1@gmail.com', 'Honnavar', 845868956, 'Mumbai'),
(7, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Mysore'),
(8, 'Hitesh', 'HT', 'hitesh45jk@gmail.com', 'Udupi', 458696561, 'Kerala'),
(9, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Kerala'),
(10, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'India Gate'),
(11, 'Gajanan', 'Bhat', 'gajabhat@gmail.com', 'Kumta', 2147483647, 'Mysore'),
(12, 'Ganesh', 'Naik', 'ganeshravinaik2001@gmail.com', 'Honnavar', 2147483647, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Honnavar', 8971046276),
(51, 'Ganesh', 'Gane1234', 'ganeshravinaik2001@gmail.com', 'Honnavar', 8971046276),
(72, 'Aditya', 'Adi12389', 'adityag45@gmail.com', 'Manglore', 8574968283),
(73, 'Gajanan', 'GAjju700', 'gajabhat@gmail.com', 'Kumta', 7984768581),
(74, 'Kiran', 'AJkiran1', 'kiranaj56@gmail.com', 'Honnavar', 7586949199),
(75, 'Prasad', 'Pra23444', 'prasad24@gmail.com', 'Honnavar', 7485961256),
(76, 'Mahesh', 'Mahi1233', 'maheshmm@gmail.com', 'Kumta', 9978488656),
(78, 'Nishchay', 'Nishi789', 'nishibhatt234@gmail.com', 'Udupi', 7485961236);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`,`phone`, `email`, `feedback`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar','9911236975', 'amar56@gmail.com', 'nice website'),
(3, 'adam','9429876315', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam','9420186480', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun','6210369004', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh','9950063894', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran','6263987145', 'kiran35@gmail.com', 'this is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hid` int(10) NOT NULL,
  `hname` varchar(20) NOT NULL,
  `hphone` varchar(15) NOT NULL,
  `hcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hid`, `hname`, `hphone`, `hcity`) VALUES
(1, 'Taj Hotel', '78869565', 'Mumbai'),
(2, 'Hotel High', '78869565', 'Benglore');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `pname` varchar(30) NOT NULL,
  `pdescription` varchar(10000) NOT NULL,
  `pi_main` varchar(1000) NOT NULL,
  `pi1` varchar(1000) NOT NULL,
  `pi2` varchar(1000) NOT NULL,
  `pi3` varchar(1000) NOT NULL,
  `package` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`pname`, `pdescription`, `pi_main`, `pi1`, `pi2`, `pi3`, `package`) VALUES
('Goa','04 Night Accommodation In 4**** Hotel In Goa. Daily Breakfast In Hotel From Day 2 Onward . ','04 Dinner At Hotel Or Near Restaurant . 01 Day Side Seen Of North Goa . 01 Day Side Seen Of South Goa . Pick Up From Goa Airport Drop To Hotel . Pick Up From Hotel Drop To Goa Airport . All Tours &amp Transfers On PVT. Basis.','Airfare and Train Fare .  The Above Cost Does not includes .  Items of personal nature like tips, laundry, telephone, beverages etc .  Entrance fee / Local Guide / at any place during the tour .  Meals not mentioned in the “Inclusions” section.  Anything not mentioned in the package includes section.  Cable Car / Pony ride.  GST 05% will be extra Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS:  No Booking Has Been Made So Far. Hotels Rooms &amp; Rates Are Subject To Availability. Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs . At The Time Of Confirmation, We Require Full Payment','images//destination//goa1.jpg','images//destination//goa2.jpg','16500/- Per Person On Twin Sharing Basis' );
('Kerala','Day : 1  Visit Dutch Palace (11km) (Closed on Fridays),
Jewish Synagogue (11 km) (Closed on Saturdays and Jewish holidays), St. Francis church
(15km), Santa Cruz basilica (15 km), Chinese Fishing Nets as time permits.Overnight stay
at the hotel.
Day : 2 Munnar
Munnar -The so called &quot;tea garden hill station of kerala&quot;. On the way visit vallara and
cheeyappara waterfalls and Blossom Garden. Evening, enjoy the beauty of tea garden.
Overnight stay at the hotel.
Day : 3  Visit Eravikulam National Park (15 km) to view endangered wild
goat &#39; Nilgiri Tahr&#39.  Visit Tea Museum (03Km) and the Tea factory , Mattupetty Dam (13km) and Kundala Lake (28km).Overnight stay at the hotel.'
,'Day : 4 
Visit the Periyar National Park - One of the finest sanctuaries in the country. Key fauna
include elephant, tiger,  of viewing the wild life at close quarters from the safety of a
boat. Enjoy boating at Periyar Lakepanther, leopard, etc.
Day : 5  manufacturing and exporting coir products and black
pepper. Explore the natural beauty of Kerala, the paddy fields, narrow canals, coir villages
etc. Overnight stay at the hotel/ House boat.
Day : 6 Departure Transfer
Transfer to Airport / Railway station. Back to home with sweet memories of your tour.','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy','images//destination//kerla1.jpg','images//destination//kerla2.jpg','Total Cost 59550/- For 3 Person');


('Shimla','Day 01 : Arrive Delhi - Shimla
On Arrival in Delhi we will meet you and transfer by to Shimla, view  himalaya
Reach there and check in hotel Dinner and overnight at Simala.
Day 02 : Afternoon half day city tour visiting Indian Institute Of Advanced
Studies, SankatMochan Temple and Jakhu Temple, and Visit KUFRI a
beautiful snow hill station in evening visit The Mall &amp; The Ridgeback to
hotel have dinner and overnight stay.
Day 03 : Shimla –Manali After early breakfast you will proceed to Manali (320 kms/8 hrs), Manali is a
perfect hill station covered with snow mountains and beautiful water falls. On
arrival check in at hotel.- Dinner and overnight at Manali.'
,'Day 04 : Manali - Solang Valley 
Full day excursion visiting, Sollang Valley evening return to hotel . Diner and
Overnight at hotel. (Note : Rohtang pass by own cost only)
Note : NGT terms and conditions will be applicable
Day 05: MANALI
After breakfast, half day local sightseeing in Manali, visit Hadimba Devi Temple,
Manu Temple, Buddhist Monastery, Club House and Vashisht Bath). Overnight
stay at hotel in Manali.
Day 06 : Manali To Delhi
Morning after breakfast Check Out From Hotel And Transfer To Delhi Airport.',
'Flight / Air Tickets fare
 Expenses of personal nature such as Drinks, telephone, and laundry bills etc.
 Tips and porter charges.
 Camera fees, Locker Fees.  Entry fees to Monuments / Temples / Museums / Parks, Any Rides like Camel
ride / Elephant ride / Pony ride / Gondola ride / Cycle Rickshaw ride, Jeep Safaris, boating charges,
Rafting, Skiing, Paragliding, Travelling Insurance, Guide Charges, Medical facility, Oxygen Cylinders,
Room Heater etc.
 Any additional expenses incurred due to any flight delay or cancellation, weather conditions, political
closures, technical faults etc.
 Any other services/activities not mentioned in the above programmed. 
 Room Heater charges – on direct payment basis to hotel - Guest own cost.
 Air Conditioner / Heater in vehicle is not operational in hilly areas.
Note : Atal Tunnel, Koksar Village, Rohtang Pass and Hamta Pass is not included – Union Vehicle at Guest own
cost.','images//destination//shimla1.jpg','images//destination//shimla2.jpg','@18550/- Per Per Person On Twin Sharing Basis'); 




('Ladakh-Leh','Accommodation on twin sharing basis. Meals on APAI basis
To &amp; Fro Ex Leh Airport Transfers (For Ex Leh Packages only)
All transfer/sightseeing as per itinerary (point to point) using 01 Non AC Tempo
traveler .
Innerline permit, Ladakh Entry Fees, Wild Life Fees &amp; Red Cross society fee.
Day 01: Leh Airport Pickup (4 Kms | 15 minutes approx)
Arrive at Leh airport, meet and greet by our representative and transfer
to your reserved accommodation. Check in to the hotel and get proper
rest to acclimatize. Later, in the evening visit the Leh Market, Leh
Palace and Shanti Stupa. O/N Leh.
Day 02: Leh - Lamayuru – Sham (170 Kms | 5-6 hrs approx)
After breakfast drive to Lamayuru on the way visit Liker Monastery,
Magnetic hill and Gurudwara Pathar Sahib. Lunch en route, post lunch
drive to visit the mesmerizing moon like landscapes and the Lamayuru
monastery O/N Sham.','Day 03: Sham – Leh (70 Kms | 3-4 hrs approx)
After the Breakfast drive to Leh en route visit Alchi monastery and Hall
of Fame. Arrive at Leh by afternoon. O/N Leh.
Day 04: Leh - Nubra Valley (128 Kms | 4-5 hrs approx)
After Breakfast drive to Nubra Valley via Khardungla (Highest
Motorable road in the world, 18,380 ft).  On arrival check in to
the hotel/camp. Post lunch, enjoy a camel safari (double humped
camel which are found only in Ladakh &amp; Mongolia) at the Sand Dunes
between Deskit &amp; Hundur Village. O/N Nubra Valley
Day 05: Nubra - Pangong Lake via Shyok river road (150 Kms | 6-7 Hrs
approx)
After Breakfast leave for Pangong Lake 14,500 ft, drive of 6 – 7 Hrs.
Arrival at Camp, Later free time at Leisure and enjoy the color changing
lake and the sun set on the banks of lake. O/N Pangong Lake.
Day 06: Pangong Lake – Leh (140 Kms | 4-5 hrs approx)
Early morning enjoy the picturesque view of Sun rise on lake. After
Breakfast drive back to Leh, en route visit Thiksey Monastery and Shey
Palace. O/N Leh.
Day 07: Leh Airport Drop (4 Kms | 15 minutes approx)
Early morning transfer to Leh airport to board flight back to
destination. Journey Ends.','Any mode of transport which not mention on above package or inclusion.
Any Kind of Personal Expenses or Optional Tours / Extra Meals Ordered
Monument / Museum Entrances, Rafting &amp; Camel ride. Services of local tour
guide.
Anything not specifically mentioned under the head “Prices included “Tips,
Insurance, Laundry, Phone Calls.
Any Kind of Drinks (Alcoholic, Mineral, Aerated)
Cost incidental to any change in the itinerary/ stay on account of flight
cancellation due to bad weather, ill health, roadblocks and/or any factors
beyond our control.','images//destination//ladakh2.jpg','images//destination//ladakh3.jpg','26500/- For Per Adult &amp; 16500/- For Per Child');



('Kashmir','02 Night Accommodation In Srinagar 4**** Hotel
01 Night Accommodation In Gulmarg 4**** Hotel
01 Night Accommodation In Pahalgam 4**** Hotel
Daily Breakfast In Hotel From Day 2 Onward
Daily Dinner At Hotel. Srinagar Local Side Seen
Transportation By 01 Car Non Ac Car For 05 Days
Pickup And Drop From Srinagar Airport
All Tours &amp; Transfers On PVT. Basis.
All Applicable Taxes','HOTEL USED:-
Hotel Royal Batoo 3*** In Srinagar Or Similar
Hotel Green Heights Or Royal Spring 3*** In Pahalgum Or Similar
Hotel Gulmarg Resort 3*** In Gulmarg Or Similar','Any Other Items/Services Not Mentioned Above
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Photo Id','images//destination//kashmir2.jpg','images//destination//kashmir3.jpg','22550/- Per Person On Twin Sharing Basis');





('Hyderabad','1 Nights stay - Room Tariff  ( Early Check in Subject to availability )
02 Breakfast ,01 Lunch  (  Veg &amp; Non Veg )
Transportation – 40 Seater AC Bus for 2 Days
Ramoji Film City Tour with Veg Lunch ( Non AC Bus Inside Ramoji )
All Entry Tickets of Ramoji Film City &amp; Hyd City Tour are included
01 Water Bottle Per Day Per Person (500 ml)
Guide Services for Hyd Sightseeing
Buffet Gala Dinner (02 Veg &amp; 02 Non Veg Main Course )','Day 1 : Pick up from Railway Station and Check in Hotel  after fresh up Breakfast
Proceed to Hyd Local Sightseeing  Charminar,Mecca Masjid ,Salarjung Museum
, Birla Mandir, NTR Garden, Lumbini Park ,. Lunch in the Hotel &amp; Gala Dinner and
Stay at Hotel.
Day 2 : After Breakfast, Check Out and Proceed to Enjoy a full day Tour at India’s
Largest Film Studio Complex – RAMOJI FILM CITY. and Evening Drop to Railway
station.','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Photo Id.','images//destination//hyderabad2.jpg','images//destination//hyderabad3.jpg','8499/- per person for 1N/2D'),


('Chardham','Day 1 st : Delhi / Dehradun / Haridwar To Haridwar Darshan and night
Day 2 nd : Haridwar to Barkot (180 Kms. 6 - 7 Hrs. Travelling to Barkot)
Day 3 rd : Barkot to Yamunotri to Barkot (45 kms. By Road and 6 Km. by foot one way)
Day 4 th : Barkot to Uttarkashi (80 kms. 3 – 4 Hrs. Travelling to Uttarkashi)
Day 5 th : Uttarkashi to Gangotri to Uttarkashi (95 kms. 3 - 4 Hrs. Travelling to reach Gangotri)
o Day 6 th : Uttarkashi to Guptkashi (240 kms. 8 - 9 Hrs. Travelling to reach Guptkashi)
Day 7 th : Guptkashi to Kedarnath (35 kms. by Vehicle and 21 kms by foot)
Day 8 th : Kedarnath to Guptkashi (21 kms. by foot and 35 km. from Vehicle)
Day 9 th : Guptkashi to Badrinath (190 kms. 7 - 8 Hrs. Travelling to reach Badrinath)
Day 10 th : Badrinath to Rudrapryag (160 kms. 6 - 7 Hrs. Travelling to reach Rudrapryag)
Day 11 th : Rudrapryag to Haridwar (160 kms. 6 - 7 Hrs. Travelling to reach Haridwar)
o Day 12 th : Check Out from Haridwar (Drop at Haridwar railway station)','Hotels Used
o Haridwar – Hotel Lakshya / Ayu Suites / Hotel Brinjal / Similar
o Barkot – Hotel Milan / Similar
o Uttarkashi – Sahaj Villa / Similar
o Guptkashi – Behl Forest / Similar
o Kedarnath – Agra House / Behl Ashram / Similar (Sharing Rooms)
o Badrinath – Badri Valley / Similar
o Rudraparayg – Shangrila Resort / Samrat Hotel / Similar
o Rishikesh – Arcatic Hills / Hotel Kamakshi / Similar','o Any Ticket [ Rail / Air / Bus ]
o Coolie / Porter / Guide Charges
o Any Entrance, Camera Charges During Sightseeing
o Extended stay or travelling due to any reason.
o Any other meals.
o Travel Insurance.
o Any Kind of entry or Permission.
o Personal Expenses, Telephone, Laundry, Liquor, Tips etc.
o Any other not mansion in Inclusions.
o Any Jungle Safari, Bird Safari, Elephant Safari, etc… not include in any package.','images//destination//chardham2.jpg','images//destination//chardham3.jpg','56500/- per person for 11N/12D'),



('Shreelanka','Economical Class Air Fare Ex Raipur
02 Night Accommodation In Kandy 3*** Hotel
02 Night Accommodation In Bentota 3*** Hotel
02 Night Accommodation In Colombo 3*** Hotel
Daily Breakfast In Hotel From Day 2 Onward
01 500Ml Water Bottle Per Person On Tour
Gems Gallary
Cultural Show
Spice Garden
Pinnawala Elephant Orphanage
Kandy Full City Tour (Kandy Lake, Kandy View Point, Murugan Temple, Cultural
Show, Spice Garden)
Bentota Full Sightseeing
Watersport (Jet Ski,Banana Boat Ride,Tube Ride)
Colombo Full City Tour (Independence Square, Parliament, Petta Market, Galle
Face, Beira Lake, Lotus Tower, Panjamuga Aanjineyar Temple, Beaches)
Colombo Shopping Tour
All Tours &amp; Transfers On PVT. Basis.','Hotel The Mountbatten 3*** In Kandy Or Similar
Hotel Blue Beach Wadduwa 3*** In Bentota Or Similar
Hotel Berjaya 3*** In Colombo Or Similar','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade
Fairs &amp; Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6
Months Validity','images//destination//shreelanka2.jpg','images//destination//shreelanka3.jpg', '44500/- per person for 6N/7D'),


('Maldives','Economic Class Air Fare Ex Mumbai
03 Night Accommodation In 5**** Resort
Arrival And Departure Transfers     
Daily Breakfast From Day 2 Onwards
Assistance At The Airport By Hotel Representatives
Welcome Drink Upon Arrival
A Bottle Of Water Per Person Per Day To Be Placed In The Room
Tea /Coffee Making Facilities
Complimentary Wi-Fi Facility
Complimentary Snorkeling Equipment, Canoes And Stand Up
Paddle Boats.
Access To Fitness Center And Tennis Court.','Hotel Used:-
 Sheraton Maldives Full Moon Resort &amp; Spa','GST 5.00% Will Be Applicable On Total Package
Any Other Items/Services Not Mentioned Above.
GENERAL CONDITIONS &amp; REMARKS:
ROE As On The Date Of Payment Will Be Applicable.
No Booking Has Been Made So Far.
Hotels Rooms &amp; Rates Are Subject To Availability.
In Case Of Any Dispute Will Be Settled In Raipur Judiciary
Rates Might Change If Traveling Dates Will Be Change Or In Blackout Periods, Major Trade Fairs &amp;
Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6 Months
Validity','images//destination//maldives2.jpeg','images//destination//maldives3.jpeg', '72500/- per person for 3N/4D'),


('Viyatnam','Day 1
Ha Noi Arrival - Ha Noi Tour: 
Upon your arrival in Noi Bai International Airport, meet up with your tour guide and then
transfer to the city center; you will soon feel the bustling daily life along the streets. 
Take the first visit to Ho Chi Minh Mausoleum &amp; Complex; your tour guide will brief you about
the revolutionary life of the monumental Ho Chi Minh leader who led Vietnam to independence
while walking around his old offices and stilt house.
Day 2
Ha Noi - Ninh Binh Tour: 
(SIC with local lunch) 07:45-08:15: Our tour guide and driver will pick up at your hotel in Hanoi
city to depart for Ninh Binh province (120 Kms). Start tour Trang An - Bai Dinh Pagoda.
','Day 3
Ha Noi - Ha Long Bay: 
From Hanoi, you will travel to Halong Bay in an air-conditioned car. After that, board your
traditional junk, where the crew welcomes you with a scrumptious lunch buffet.
You can take memorable family photos on the sundeck with the backdrop of thousands of
limestone karsts, dotted with isles covered in lush green nature.
Day 4
Ha Long Bay - Ha Noi - Da Nang: 
A Tai Chi course is offered in the refreshing morning air on the sundeck before breakfast. Optionally, you can continue exploring
the magnificent nature of Halong Bay by visiting Sung Sot Cave or the charming Ti Top Island. Continue cruising through the tall
limestone karsts. After lunch, you will flight to Da Nang','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//viyatnam1.jpg','images//destination//viyatnam2.jpg', '47500/- per person for 7N/8D'),



('UK','Europamundo General Services: Travel by bus with English speaking guide, basic travel insurance, hotel and
breakfast buffet.
Includes arrival transfer
City tour in: LONDON, EDINBURGH
Boat: loch Ness
Evening transfer: Leicester/ Soho area in London
Transfer: Camden district in London
Ticket admission: The Hermitage protected site forest, whisky distillery in Pitlochry , Blair castle , Eilean
Donan castle, Urquhart castle','HOTEL
NOVOTEL LONDON WEMBLEY 4****/ IBIS LONDON WEMBLEY 4***/ PREMIER INN
HANGER LANE 3***/ IBIS LONDON EARLS COURT 3***/ PREMIER INN BRENTFORD 3***/
PREMIER INN WEMBLEY STADIUM 3***/ NOVOTEL LONDON GREENWICH 4****/
MARRIOTT ROYAL COUNTY 4**** In England
HOLIDAY INN EDIMBURGO ZOO 4****/ MARRIOTT EDINBURG HOTEL 4****/ MOXY
EDINBURGH FOUNTAINBRIDGE 4****/ MERCURE EDINBURGH HAYMARKET 4**** In
SCOTLAND','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
At The Time Of Confirmation, We Require Full Payment Along Adhar Copy','images//destination//uk2.jpeg','images//destination//uk3.jpeg',  '3,65,500/- per person for 12N/13D'),


('US','Economical Class Air Fare Ex Raipur
02 Night Accommodation In New York In 4**** Hotel
01 Night Accommodation In New Jersey In 4**** Hotel
02 Night Accommodation In Washington DC In 4**** Hotel
Daily Breakfast In Hotel From Day 2 Onward
New York Hop On Hop Off Tour
New Jersey Hop On Hop Off Tour
Washington Hop On Hop Off Tour
Ellis Island
Statue Of Liberty
New York Airport To New New York Hotel Transfer
New York Hotel To New Jersey Transfer
New Jersey Hotel To Bus Station Transfer
New Jersey To Washington DC Bus Tickets
Washington DC Bus Station To Hotel
Washington DC Hotel To Train Station
Train Ticket Washington To Rochester
Train Ticket Rochester To New York','HOTEL USED:-
Hotel Even Brooklyn An Ihg 4**** In New York Or Similar
Hotel Tropicana Atlantic 4**** In New Jersey Or Similar
Hotel Harrington 4**** In Washington DC Or Similar','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
G.S.T &amp; TCS Extra Charges
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity At least 6 Months','images//destination//us2.jpeg','images//destination//us3.jpeg', '2,22,500/-per person for 5N/6D'),


('Almaty','Arrival in Almaty
 Transfer airport-hotel by bus/ check-in to the hotel
 Transfer for dinner at Indian restaurant
 Transfer to hotel
 Free time – can explore night life activities at you own.
 Overnight at hotel.
DAY-2 WELCOME ALMATY CITY TOUR
 Breakfast 0700-1000
 1030 Almaty city tour with English speaking guide - you will know more about history and development of the
southern capital of Kazakhstan and see its major attractions:Palace of President, Republic Square and monument of
independence and Astana square, Panfilov park, Abai square and Palace of Republicand Presidential park.
 1430 continue Almaty city tour, Rakhat chocolate outlet and local market Zilyoni -bazar.
 You can buy chocolates from Rakhat chocolate factory outlet can buy dry fruits at cheap rates and some souvenirs
from zilyoni bazar.
 Transfer to the hotel at 1800
  Time to relax a bit after long walk
 Transfer back to hotel at 22:30
 Free time – can explore night activities at you own
 Overnight in hotel Breakfast 0700-1000
 Transfer to excursion at 1030
 This tour provides you the best opportunity to see the beautiful mountain surroundings of Almaty city. The first
stop of the tour awaits you in the Medeo gorge, where in the wonderful mountains of trans-ili ala-tau the largest
high mountain skating rink in the world is located as well as the huge dam, protecting the city from destructive
mudflows formed on the tops of the western tien shan. Next destination is Chimbulak ski resort (cable car fee
included), located at an altitude of 2230 meters above sea level. It is very popular for its mild climate, large
quantity of sunny days and snow through the winter and remarkable scenery of mountain ranges.
 Free time to look around
 Transfer to hotel 1700
 Free time at your own
 Transfer to hotel at 2230
 Free time – can explore night activities at you own
 Overnight in hotel','Breakfast 0700-1000
 1030 proceed towards the tour of Kok - Tobe. It is a mountain which is the highest point of Almaty, Kazakhstan’s
largest city. There is a popular recreation area on top of the mountain. The mountain&#39;s height is 1100 meters above
sea level. Kok - Tobe is one of the main landmarks in the city, and it is popular among visitors and tourists to
Almaty.
 The Kok - Tobe recreational area has a variety of amusement park type attractions and restaurants. The city
terminal is located near hotel Kazakhstan. Also, there is a 372 meters tall TV tower at the foot of the mountain. The
tower can be seen from most parts of the city.
 1530 proceed towards mega mall for shopping
 Transfer to hotel 1900
 Free time at your own.
 Transfer back to hotel at 2230
 Free time – can explore night activities at you own
 Overnight in hotel
DAY-5GOOD BYE
 Checkout from hotel.
 Transfers back to Almaty International Airport with everlasting
Memories of Kazakhstan
 Departure from Almaty','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
G.S.T &amp; TCS Extra Charges
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity At least 6 Months','images//destination//almaty2.jpeg','images//destination//almaty3.jpeg',  '94550/- per person for 4N/5D');


('Andman','03 Night Accommodation In Port Blair In 5***** Hotel
03 Night Accommodation In Havelock Island In 5***** Hotel
01 Night Accommodation In Neil Island In 5***** Hotel
Daily Breakfast In Hotel From Day 2 Onward
Port Blair To Havelock Island Ticket In Luxury Cruise
Havelock Island To Neil Island Ticket In Luxury Cruise
Neli Island To Port Blair Ticket In Luxury Cruise
All Entry &amp; Boat Tickets
All Tours &amp; Transfers On PVT. Basis In AC Xylo Car.','HOTEL USED :-
Coral Reef Resort At Havelock Island (Coral Turquoise
Pool Facing Room)
Symphony Samudra Beach Side Jungle Resort At Port
Blair (Casa Tropicana Tropical Rain Forest/Lake View Room) 
Sea Shell Samssara Resort At Neil Island (Samssara
Lagoon Room)','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Photo Id.','images//destination//andman1.jpeg','images//destination//andman2.jpeg','22550/- per person for 4N/5D'),


('Bali','03 Night In Bali
03 Night In Pattaya
Details As Below:-
02 Night Accommodation In Bali Kuta 4**** Hotel
01 Night Accommodation In Bali Seminyak 5***** Hotel 1 Bed Room
With Pool Villa
Full Day Tour Tanjung Benoa Beach For Water Sport Included  
(01 X Banana Boat, Jet Ski &amp; Parasailing ) 
Full Day Kintamani Ubud Tour (Tirta Empul,Spring Temple ,
Kintamani Mount And Lake Batur)
Rice Terrace
Ubud Volcano
Evening Uluwatu Temple Tour With Kecak Fire Dance
Ulun Danu Temple','Arrival And Departure Transfers     
Daily Breakfast Form Day 2 Onwards
All Tours And Transfers Are On PVT Basis

03 Nights Accommodation In Pattaya  4**** Hotel
Daily Breakfast From Day 2 Onward&#39;s 
Pattaya City Tour
Coral Island Tour With Lunch
Alcazar Show
Bangkok Airport To Pattaya Hotel Transfer On PVT','GST 5.00% Will Be Applicable On Billing
5% TCS On Billing, Whether
Payment In INR OR FORIEGN EXCHANGE.
Visa Charges Extra
Check In Luggage In Air Lines
Any Other Items/Services Not Mentioned Above.
ROE As On The Date Of Payment Will Be Applicable.
No Booking Has Been Made So Far.
Hotels Rooms &amp; Rates Are Subject To Availability
Rates Might Change If Traveling Dates Will Be Change Or In Blackout Periods, Major Trade Fairs &amp;
Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6 Months
Validity','images//destination//bali2.jpeg','images//destination//bali3.jpeg' , '64500/- per person for 4N/5D(Bali only)'),


('Dubai','Economical Class Air Fare Ex Raipur
Meet And Greet At Airport
04 Nights’ Accommodation In 4***** Hotel In Dubai
Daily Breakfast At Same Hotel
Dubai City Tour
Desert Safari With BBQ Dinner
Belly Dance Show
Fire Show
Dinner Cruise At Marina
Burj Khalifa Entry Ticket At 124 Floor
Fountain Show
Dubai Mall
Miracle Garden
Global Village
02 Dinner In Indian Restaurant (With Out Transfer) 
UAE Single Entry Visa
UAE InsuranceTwo Way Dubai Airport Transfer
All Dubai Taxes Added
All Transfers On PVT. Basis',
'Hotel Used :-
Hotel Skaf Dubai // Gulf Inn All Nasr Hotel // Orchid Vue
Hotel // Golden Tulip // The Leela 4**** Or Similar In Dubai','Dubai Visa Charges Extra
Dubai Insurance Charges Extra
Tourism Dirham Fee Extra (Have To Pay Direct At The Hotel ) 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//dubai1.jpeg','images//destination//dubai3.jpeg',  '76550/- per person for (4N/5D,Dubai only)'),


('Batam','Economic Class Air Fare Ex Raipur
03 Night In Stay In Batam Island 4**** Hotel
01 Night In Stay In Singapore 4**** Hotel
Daily Breakfast From Day 02 Onwards
Batam City Tour
Batam Shopping Tour
Bintan Island Tour
Kepri Coral Tour
Water Sport Activities (Undersea World,Shark Feeding , Fish Feeding ,
Waterbike , Canoe , Snorkeling , Tarzan House , Swimming Pool , Beach Swing ,
Hemmock , Mahjong , Beach Volley Ball , Soccer )
Mangrove Forest
Mini Zoo
Free Photo With Animal At Kepri
Free Ride Of Mountain Bike','Singapore City Tour
Garden By The Bay (Flower Dome &amp; Super Tree)
Sentosa Special Package With Return Transfer
1 Way Cable Car Ride, 
Wings Of Time 2 Nd Show
Madame Tussauds
Images Of Singapore
Marvel 4D Show
Ultimate Flim Star Experience
Boat Ride
Return Airport Transfers
01 Extra Transfer From Ferry Terminal  
Ferry Ticket From Singapore To Batam
Ferry Ticket From Batam To Kepri Coral
Ferry Ticket From Kepri Coral To Batam
Ferry Ticket From Batam To Bintan Island
Ferry Ticket From Bintan Island To Batam
Ferry Ticket From Batam To Singapore','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//batam1.jpg','images//destination//batam2.jpg', '89550/- Per Person for 4N/5D'),


('Thailand','Economical Class Air Fare Ex Indore
03 Night Accommodation In Pattaya 4**** Hotel
Daily Breakfast In Hotel From Day 2 Onward
Coral Island By Speed Boat With Lunch
Gems Gallery
Pattaya City Tour (For Optional Activities)
Alcazar Show 
Dinner Cruise In Pattaya Star Cruise
Pool Party With Unlimited Full Flow Of Red Label Whiskey &amp; Local Beer With 02
Veg Snacks 02 Non Veg Snacks For 2 Hour 4 Thai Beautiful Female Dancer With
Lunch 
01 Lunch &amp; 02 Dinner In Pattaya With Transfer
01 Dinner In Pattaya With Transfer 03 Hour Banquet Hall For
Conference
Bangkok Airport To Pattaya Hotel Transfer
Pattaya Hotel To Bangkok Hotel Transfer
Bangkok Hotel To Bangkok Airport Transfer
All Tours &amp; Transfers On PVT. Basis. In VIP Coach
English Speaking Guide
Service Of Tour Manager From Indore To Indore
Thai Travel Insurance','HOTEL USED :-
Hotel Grand Bella 4**** In Pattaya Or Similar','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//thailand1.jpeg','images//destination//thailand2.jpeg', '55500/- per person for 3N/4D (Pattaya + bangkok)'),


('Singapore','Economy Class Air Fare Ex Raipur
03 Nights Accommodation In Singapore Hotel The Grand Pacific 
4**** Or Similar
Daily Breakfast From Day 2 Onward&#39;s 
Singapore City Tour
Universal Studio With 10SGD Lunch Coupon
Sentosa Special Package With Return Transfer
1 Way Cable Car Ride, 
Wings Of Time 2 Nd Show
Images Of Singapore
Madame Tussauds
02 Lunch In India Restaurant (With Out Transfer)
03 Dinner In India Restaurant (With Out Transfer)
Luge Ride
Sky Ride 
Return Airport Transfers 
All Tour &amp; Transfer Are On PVT. Basis Conducted By
English Speaking Gide','HOTEL USED :-
Hotel Grand Bella / Golden Beach 4**** In Pattaya Or Similar','Visa Charges Extra 
  Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//singapore1.jpeg','images/destination//singapore3.jpeg',  '92500/- Per Person for 5N/5D(Singapore+Maldives only)'),


('Paris','Economical Class Air Fare Ex. Delhi
02 Night Accommodation In Paris In 4**** Hotel
04 Night Accommodation In Switzerland 4**** Hotel
Daily Breakfast From Day 2 Onward
Meet And Greet At Airport
Seine River Cruise
Paris City Tour
Entrance Ticket Eiffel Tower 02 Nd Level
Day Trip Of Engelberg
Excursion To Mt. Titlis With Ice Flyer
Orientational Tour Of Lucerne
Day Trip Of Titisee Lake (Black Forest )
Orientation tour of Titisee Lake, Black forest
Rhine falls
Proceed for Orientation Tour of Zurich
All Tour And Transfer On PVT Basis','Hotel Used:-
Hotel Mercure Paris Roissy-Charles-de-Gaulle 4**** Or Similar
Hotel Novotel Zurich Airport Messe 4**** Or Similar','GST 5.00% Will Be Applicable On Total Package
Any Other Items/Services Not Mentioned Above.
Visa Charges Extra
GENERAL CONDITIONS &amp; REMARKS:
ROE As On The Date Of Payment Will Be Applicable.
No Booking Has Been Made So Far.
Hotels Rooms &amp; Rates Are Subject To Availability.
In Case Of Any Dispute Will Be Settled In Raipur Judiciary
Rates Might Change If Traveling Dates Will Be Change Or In Blackout Periods, Major Trade Fairs &amp;
Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6 Months
Validity','images//destination//paris1.jpeg','images//destination//paris2.jpeg', '1,92,500/- per person for 6N/7D'),


('Phuket','Economical Class Air Fare Ex Raipur
02 Night Accommodation In Phuket 4**** Hotel
02 Night Accommodation In Pattaya 4**** Hotel
01 Night Accommodation In Bangkok 4**** Hotel
Daily Breakfast In Hotel From Day 2 Onward
Phi Phi Island Tour With Lunch
Phuket City Tour
Coral Island With Lunch
Alcazar Show
Art And Paradise
Safari World
Marine Park With Lunch
Bangkok City Tour
Pattaya City Tour
01 Lunch At Indian Restaurant In Phuket (With Out Transfers)
02 Dinner At Indian Restaurant In Phuket (With Out Transfers)','01 Lunch At Indian Restaurant In Pattaya (With Out Transfers)
03 Dinner At Indian Restaurant In Pattaya (With Out Transfers)
01 Lunch At Indian Restaurant In Bangkok (With Out Transfers)
02 Dinner At Indian Restaurant In Bangkok (With Out Transfers)
All Tours &amp; Transfers On PVT. Basis.
HOTEL Usde :-
Hotel Patong Resort 4**** In Phuket Or Similar
Hotel Centara Pattaya 4**** In Pattaya Or Similar
Hotel Avani Atrium 4**** In Bangkok Or Similar','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs &amp; Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6 Months
Validity','images//destination//phuket2.jpeg','images//destination//phuket3.jpeg', '75550/- Per Person for 5N/6D'),


('Malayshia','Inclusions :-
Economic Class Air Fare Ex.Kolkata
Meet And Greet At Airport
03 Nights’ Accommodation In 4**** Hotel At Kuala Lumpur
01 Nights’ Accommodation In 4**** Hotel At Genting Highland
02 Nights’ Accommodation In 4**** Hotel At Langkawi 
Arrival Assistance At The LGK &amp;  KUL Airport By Our
Representative
Daily Breakfast At Same Hotel
Langkawi City tour
Underwater World In Langkawi
Cable Car Combo (Sky Rex  Sky Cab, Sky Some &amp; 3D Art Museum)
Sky Bridge
Sky Glide
Kuala Lumpur City Tour
Genting Enroute Putrajeya Tour
Batu Caves Visit
KL Tower Entrance
Genting 02 Way Cable Car
06 Lunch In India Restaurant  
06 Dinner In India Restaurant
All Tour &amp; Transfers By Ac Coach With English-Speaking National Guide','Hotel Used :-
Hotel Cosmo 4**** Or Similar In Kuala Lumpur
Hotel Awanna 4**** Or Similar In Genting
Hotel Bay View 4**** Or Similar In Langwaki','Visa Charges Extra 
Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
ROE As On The Date Of Payment Will Be Applicable. 
No Booking Has Been Made So Far. 
Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment Along Passport Copy
Passport Validity Atleast 6 Months','images//destination//malayshia2.jpg','images//detination//malayshia3.jpg',  '78550/- Per Person for 6N/7D'),


('Honeymoon','04 Night Accommodation In Bali Kuta 4**** Villa
03 Night Accommodation In Bali Ubud 4**** Villa
Meet And Greet At Airport
Arrival And Departure Transfers     
Daily Breakfast From Day 2 Onwards
Ubud Palace
Tirta Empul Spring Temple
Kintamani View Of Batur Volcano
Tegalalang Rice Terrace (Swing At Personal Expenses)
Ubud Monkey Forest
Tjampuhan Ridge Walk
ATV Ride
Rafting At Ayung River
Lempuyang Temple Gate Of Heaven
Tirta Gangga
Tegenungan Waterfall
Fullday Nusa Penida Island Trip
Kelingking Beach
Angel Billabong
Broken Beach
Crystal Bay
Banyumala Waterfall
Ulun Danu Temple
Tanah Lot
Snorkeling At Tanjung Benoa
Garuda Wisnu Kencana Cultural Park
Uluwatu Temple
Waterbom
All Tours And Transfers Are On PVT Basis','Hotel Used:-
Solia Legian Kuta Bali 4**** Or Similar
Pertiwi Resort &amp; Spa In Ubud Bali 4**** Or Similar','GST 5.00% Will Be Applicable On Total Package
Any Other Items/Services Not Mentioned Above.
GENERAL CONDITIONS &amp; REMARKS:
ROE As On The Date Of Payment Will Be Applicable.
No Booking Has Been Made So Far.
Hotels Rooms &amp; Rates Are Subject To Availability.
In Case Of Any Dispute Will Be Settled In Raipur Judiciary
Rates Might Change If Traveling Dates Will Be Change Or In Blackout Periods, Major Trade Fairs &amp;
Exhibitions
At The Time Of Confirmation, We Require Full Payment Along Passport Copy With Atleast 6 Months
Validit','images//destination//honeymoon1.jpeg','images//destination//honeymoon3.jpeg',  '21200/- per person for '),


('Darjeeling','02 Night Accommodation In Darjeeling 3*** Hotel
02 Night Accommodation In Gangtok 3*** Hotel
Daily Breakfast In Hotel From Day 2 Onward
Daily Dinner At Hotel
Travel, Transport And Sightseeing
Vehicle Will Be Available As Per Itinerary
All Permit Fees
Hotel Taxes
Parking Fees
All Tours &amp; Transfers On PVT. Basis.','With This Promise From All Of Us To Make Your Holiday An
Unparalleled Experience, We Hope You Enjoy Your Holiday
As Much As We Enjoyed Bringing It To You.','Any Other Items/Services Not Mentioned Above. 
GENERAL CONDITIONS &amp; REMARKS: 
  No Booking Has Been Made So Far. 

Hotels Rooms &amp; Rates Are Subject To Availability. 
Rates Might Change If Traveling Dates Will Be In Blackout Periods, Major Trade Fairs
At The Time Of Confirmation, We Require Full Payment','images//destination//darjeeeling2.jpg','images//destination//darjeeling3.jpg', '22500/- Per Person for 4N/5D');



-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adii', '123456', '2021-01-20 08:15:18am'),
('gaja', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nishchay', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gajanan', 'GAjju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Tajmahal', 'Agra'),
(2, 'Beach', 'Goa'),
(3, 'India Gate', 'Delhi'),
(4, 'Kerala Beach', 'Kerala'),
(5, 'Mysore Palace', 'Mysore'),
(6, 'Ladakh', 'Ladakh India');
(7, 'Ladakh', 'Ladakh India');
(8, 'Ladakh', 'Ladakh India');
(9, 'Ladakh', 'Ladakh India');
(10, 'Ladakh', 'Ladakh India');
(11, 'Ladakh', 'Ladakh India');

-- --------------------------------------------------------

--
-- Table structure for table `travel_agent`
--

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agent`
--

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amar', 'amarraj123@gmail.com', 85749646, 'Mandya'),
(2, 'akhil', 'akhil23@gmai.com', 45968678, 'Manglore'),
(3, 'kiran', 'kiru34@gmail.com', 78969665, 'Mysore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `travel_agent`
--
ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_agent`
--
ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT ;
!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS ;
!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION ;
