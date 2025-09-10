create database travel;
use travel;
CREATE TABLE booking (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    package VARCHAR(100),
    travel_date DATE,
    message TEXT,
    PRIMARY KEY (id)
) ;
CREATE TABLE feedback (
    name VARCHAR(20),
    email VARCHAR(100),
    feedbk VARCHAR(200)
) ;
CREATE TABLE hotels (
    hid VARCHAR(1000),
    hname VARCHAR(1000),
    hphone INT(11),
    hcity VARCHAR(100)
) ;
CREATE TABLE information1 (
    id INT(11) NOT NULL AUTO_INCREMENT,
    pname VARCHAR(200),
    destination VARCHAR(2000),
    image VARCHAR(1000),
    package INT(11),
    PRIMARY KEY (id)
);
insert into information1(pname,destination,image,package)
values('Marine Drives Road','Cox’s Bazar Marine Drive Road is an 80-kilometre-long road from Cox’s Bazar to Teknaf along the Bay of Bengal and it is the world’s longest marine drive. It was inaugurated on May 6, 2017 by Prime Minister Sheikh Hasina. It was constructed by 16th Engineer Construction Battalion of Bangladesh Army, under the supervision of Bangladesh Roads and Highways Department.','https://media.istockphoto.com/id/1346172937/photo/drone-shot-of-coxs-bazar-teknaf-marine-drive.jpg?s=170667a&w=0&k=20&c=sw7Ei2Uaq4m5bur3koEP7ap_S9rWCG4bY58oGJgLkwg=',1000);
insert into information1(pname,destination,image,package)
values('Darianagar cave','Kana Raja’s Cave located in Darianagar, Cox’s Bazar. Even though the cave is not well exposed to the travelers but this place is still attracting too many tourists who are travelling to the Cox’s Bazar region. Kana means ‘Blind’ and the Raja means ‘King’, so the name came from a Blind king who ruled around 300 years ago or so in this area. The cave is not that big and only couple of hours or even less time is require to explore the entire cave. There are few places to climb up by the mountainous small slopes and the small cave itself. The place is very dark and quiet so someone can easily feel the horror face of the darkness.','https://i0.wp.com/tourbuzzbd.com/wp-content/uploads/2023/09/Moheskhali-Island-Coxs-Bazar-02.jpg?resize=350%2C200&ssl=1',100);
insert into information1(pname,destination,image,package)
values('Baghona Pass Waterfall','Nestled in the lush hills of Teknaf, Baghona Pass Waterfall is a serene natural retreat. Clear, cascading waters wind through vibrant greenery, which creates a tranquil setting. During the rainy season, the waterfall comes alive with stunning views, and offers a spectacle of nature at its best. However, visitors should tread carefully. The rocky and slippery terrain can be challenging, so a sense of adventure—and caution—is essential to fully appreciate this hidden gem.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJd0xGhCxVKJ51Qmt1L8EFNklt4lPCRDNCrg&s',15);
insert into information1(pname,destination,image,package)
values('Hiron point Sundarban','Hiron Point, a protected sanctuary in the southern part of the Sundarbans. Another name is Nilkamol. Located on the western bank of the river Kunga, in the Khulna Range. It is a UNESCO World Heritage Site under Sundarbans, largest mangrove forest in the world.
As Hiron Point is a sanctuary, this place is a safe haven for tigers, deer, monkeys, birds, and reptiles. For this reason, it is one of the best places to watch the Royal Bengal Tiger and other live wildlife in the Sundarbans area.From Hiron Point, you can see Chitra deer, wild boar and other attractive animals of Sundarbans. Among the birds, there are Halcyon, yellow chestnut Halcyon, blackhead fishery Halcyon, large egret, medal buck, etc. There are also lots of crab habitats. And there are various types of butterfly.','https://www.travelmate.com.bd/wp-content/uploads/2019/09/Tigers-Hiron-Point-Sundarbans.jpg.webp',35);

insert into information1(pname,destination,image,package)
values('Dublarchar Island Sundarban','Dublar Char is specifically located in the Bagerhat District within the Khulna Division. It spans approximately 66.5 square kilometers and is a popular tourist destination in the Sundarbans. What sets this island apart is that it can only be accessed through the Teletalk Internet & Mobile Network.Apart from its scenic beauty, Dublar Char is also functional. Fishermen temporarily inhabit the island for about three to four months during the fishing season. They have requested the government of Bangladesh to establish a floating hospital to address their healthcare needs.','https://www.sundarbantours.com/wp-content/uploads/2013/03/dublar-chor-sundarban-bangladesh.jpg',45);insert into information1(pname,destination,image,package)
values('Sundarban national Park','The UNESCO World Heritage Site of the Sundarbans is one of the world’s largest single areas of tidal halophytic mangrove forests. Highlighting the environmental value of the Sundarbans, it has been designated a Ramsar site, making it subject to the Ramsar Convention international treaty that promotes the conservation and sustainable utilization of crucial wetlands. The Sundarbans, literally meaning “beautiful jungle” or “beautiful forest”, lies at the mouth of the Ganges and is home to an estimated 200 Bengal Tigers and a herd of approximately 30,000 spotted deer, as well as an impressive variety of reptile, invertebrate and bird species.','https://www.holidify.com/images/cmsuploads/compressed/Beauty_of_sundarban_04_20220509173753.jpg',55);

insert into information1(pname,destination,image,package)
values('Local villages of Saint Martin','Saint Martin’s, the one and only coral island of Bangladesh, is a small island measuring eight square kilometers. The visible landmass sinks during the tide. Alternatively called the pearl of the sea, it is about 10 km from the mainland at teknaf. The safest means of transport is the government-owned ferry which takes around two hours one way. Tourists have the option to spend a few hours and return the same day or stay for one or two days. Due to ferry’s timing, one and a half days tour is practical. Relaxation and fun on the picturesque place of blue sky and coconut trees, swimming in crystal blue water, snorkeling in the lagoon, and walking in the fresh air will be a lifetime experience. The seafood with its variety and taste has an appeal. There are a good number of hotels, guest houses, and eateries. There are a scuba diving facility and a sea turtle hatchery. Since it is a small island one can tour the entire area on foot in a few hours. The permanent residents of the island, numbering around 8,000, are all fishermen.','https://www.dhakaholidays.com/images/islands-bangladesh/st-martins-island-tour-bangladesh.jpg',65);
insert into information1(pname,destination,image,package)
values('Coral Island','St. Martins Island is a small island (about 8 square kilometres) in the northeast of the Bay of Bengal. It is about 9 km south of the tip of the Coxs Bazar-Teknaf peninsula, and is the southernmost part of Bangladesh. There is a small connected island that is separated at high tide, called Chhera Island. It is about 8 km west of the northwest coast of Myanmar, at the mouth of the Naf River.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQara--YPsmAM0ach1Iz6CBoFYrYFSy7qwskg&s',65);
insert into information1(pname,destination,image,package)
values('Narkel Jinjira','St Martins Island a small island in the northeast of the bay of bengal, about 9 km south of the Cox’s Bazar-Teknaf peninsular tip and forming the southernmost part of Bangladesh. It is about 8 km west of the northwest coast of Myanmar at the mouth of the river naf. The island lies between 92°18 and 92°21E longitudes and 20°34 and 20°39N latitudes. The local people call it Narikel Jinjira. It is almost flat and is 3.6m above the mean sea level. The 9.66 km wide channel between the mainland and the island is much shallower than the open sea southwest of the island. There are reefs from 10-15 km to the west-northwest.','https://c8.alamy.com/comp/J03X69/the-saint-martins-island-locally-known-as-narikel-jinjira-teknaf-coxs-J03X69.jpg',65);

insert into information1(pname,destination,image,package)
values('Rajban Bihar Buddhist Temple Rangamati','Rangamati district has many wonderful places and many Hills as tourist spots. Rajban Bihar Pagoda is one of them. It is a very ideal place especially for the Buddhist. It looks like a golden temple. Its scenery is wonderful and attracts everybody. Rajban Vihara is called the spiritualist principal monk. It is an internationally known Buddhist Temple, where the spiritualist principal monk Shrimath Sadhana Nanda Mohasthabir (Ban Vante) lives.','https://rajbanbiharpagoda.wordpress.com/wp-content/uploads/2012/08/pagoda1.jpg?w=584',60);
insert into information1(pname,destination,image,package)
values('Jaflong','Jaflong is a wonderful tourist spot 56 kilometers away from the Sylhet city. The Spot filled with mountains and streams offers a wide variety of experiences for the visitors. Here you will find the rolling rocks, crystal clear water of the Goain River abound with fish and other aquatic features. The indigenous people khasia live in this region for thousands of years whose colorful lifestyle is a lifetime experience for you. Located in Gowainghat Upazila of Sylhet District.','https://tse1.mm.bing.net/th/id/OIP.FKJsM3j0QBKOTXjWEz9ogQHaDt?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',80);


CREATE TABLE passport (
    id INT AUTO_INCREMENT PRIMARY KEY,
    passport_number VARCHAR(9) NOT NULL,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50) NOT NULL,
    expiry_date DATE NOT NULL
);

INSERT INTO passport (passport_number, name, country, expiry_date) VALUES
('AA1000001','John Doe','USA','2025-12-31'),
('AA1000002','Alice Wong','UK','2026-05-20'),
('AA1000003','Bob Smith','Canada','2024-10-01'),
('AA1000004','Maria Lopez','Spain','2025-08-15'),
('AA1000005','Chen Li','China','2023-11-30'),
('AA1000006','Fatima Khan','Pakistan','2026-01-10'),
('AA1000007','David Brown','Australia','2024-06-25'),
('AA1000008','Emma Davis','USA','2025-12-10'),
('AA1000009','Liam Johnson','UK','2026-02-28'),
('AA1000010','Olivia Wilson','Canada','2025-03-15'),
('AA1000011','Noah Martinez','Spain','2024-07-22'),
('AA1000012','Sophia Anderson','China','2025-09-05'),
('AA1000013','Mason Thomas','Pakistan','2024-11-18'),
('AA1000014','Isabella Taylor','Australia','2026-04-12'),
('AA1000015','Ethan Moore','USA','2025-06-30'),
('AA1000016','Mia Jackson','UK','2025-08-08'),
('AA1000017','Alexander White','Canada','2026-01-25'),
('AA1000018','Charlotte Harris','Spain','2024-12-14'),
('AA1000019','Daniel Martin','China','2025-07-09'),
('AA1000020','Amelia Thompson','Pakistan','2026-03-03'),
('AA1000021','James Garcia','Australia','2025-09-21'),
('AA1000022','Harper Robinson','USA','2024-10-11'),
('AA1000023','Benjamin Clark','UK','2025-11-19'),
('AA1000024','Evelyn Rodriguez','Canada','2026-02-07'),
('AA1000025','Elijah Lewis','Spain','2025-05-16'),
('AA1000026','Abigail Lee','China','2024-12-29'),
('AA1000027','William Walker','Pakistan','2026-01-17'),
('AA1000028','Emily Hall','Australia','2025-08-27'),
('AA1000029','Lucas Allen','USA','2025-03-14'),
('AA1000030','Scarlett Young','UK','2026-06-05'),
('AA1000031','Henry Hernandez','Canada','2024-09-19'),
('AA1000032','Victoria King','Spain','2025-10-21'),
('AA1000033','Owen Wright','China','2024-11-12'),
('AA1000034','Grace Scott','Pakistan','2025-07-28'),
('AA1000035','Jackson Green','Australia','2026-02-13'),
('AA1000036','Chloe Adams','USA','2024-12-02'),
('AA1000037','Sebastian Baker','UK','2025-01-29'),
('AA1000038','Ella Gonzalez','Canada','2026-05-09'),
('AA1000039','Aiden Nelson','Spain','2025-06-23'),
('AA1000040','Lily Carter','China','2024-10-30'),
('AA1000041','Matthew Mitchell','Pakistan','2025-09-15'),
('AA1000042','Hannah Perez','Australia','2026-03-20'),
('AA1000043','David Roberts','USA','2024-11-05'),
('AA1000044','Sofia Turner','UK','2025-08-11'),
('AA1000045','Joseph Phillips','Canada','2026-01-30'),
('AA1000046','Aria Campbell','Spain','2025-12-08'),
('AA1000047','Samuel Parker','China','2024-09-22'),
('AA1000048','Avery Evans','Pakistan','2025-04-17'),
('AA1000049','Anthony Edwards','Australia','2026-06-28'),
('AA1000050','Lillian Collins','USA','2025-02-19'),
('AA1000051','Christian Stewart','UK','2024-11-28'),
('AA1000052','Zoe Sanchez','Canada','2025-09-09'),
('AA1000053','Jonathan Morris','Spain','2026-01-03'),
('AA1000054','Nora Rogers','China','2025-03-11'),
('AA1000055','Andrew Reed','Pakistan','2024-12-21'),
('AA1000056','Stella Cook','Australia','2025-07-07'),
('AA1000057','Ryan Morgan','USA','2026-02-22'),
('AA1000058','Holly Bell','UK','2025-05-31'),
('AA1000059','Nathan Murphy','Canada','2024-10-17'),
('AA1000060','Luna Bailey','Spain','2025-08-04'),
('AA1000061','Dylan Rivera','China','2026-03-15'),
('AA1000062','Camila Cooper','Pakistan','2025-11-11'),
('AA1000063','Christian Richardson','Australia','2024-09-09'),
('AA1000064','Hazel Cox','USA','2025-12-06'),
('AA1000065','Isaac Howard','UK','2026-01-22'),
('AA1000066','Violet Ward','Canada','2024-10-29'),
('AA1000067','Gabriel Torres','Spain','2025-05-19'),
('AA1000068','Aurora Peterson','China','2026-06-10'),
('AA1000069','Caleb Gray','Pakistan','2024-12-03'),
('AA1000070','Ellie Ramirez','Australia','2025-07-25'),
('AA1000071','Wyatt James','USA','2026-02-17'),
('AA1000072','Addison Watson','UK','2025-09-23'),
('AA1000073','Isaiah Brooks','Canada','2024-11-16'),
('AA1000074','Savannah Kelly','Spain','2025-03-27'),
('AA1000075','Luke Sanders','China','2026-01-06'),
('AA1000076','Paisley Price','Pakistan','2025-04-20'),
('AA1000077','Carter Bennett','Australia','2024-12-28'),
('AA1000078','Elena Wood','USA','2025-08-18'),
('AA1000079','Dominic Barnes','UK','2026-05-14'),
('AA1000080','Mackenzie Ross','Canada','2024-10-21'),
('AA1000081','Leo Henderson','Spain','2025-06-12'),
('AA1000082','Maya Coleman','China','2026-03-28'),
('AA1000083','Thomas Jenkins','Pakistan','2025-11-04'),
('AA1000084','Penelope Perry','Australia','2024-09-27'),
('AA1000085','Hudson Powell','USA','2025-12-20'),
('AA1000086','Eliza Long','UK','2026-01-14'),
('AA1000087','Asher Patterson','Canada','2024-10-05'),
('AA1000088','Lucy Hughes','Spain','2025-07-02'),
('AA1000089','Christopher Flores','China','2026-06-23'),
('AA1000090','Claire Washington','Pakistan','2024-11-10'),
('AA1000091','Julian Butler','Australia','2025-05-05'),
('AA1000092','Aurora Simmons','USA','2026-02-09'),
('AA1000093','Eli Foster','UK','2025-08-29'),
('AA1000094','Ruby Gonzales','Canada','2024-12-12'),
('AA1000095','Easton Bryant','Spain','2025-03-20'),
('AA1000096','Lydia Alexander','China','2026-01-26'),
('AA1000097','Jaxson Russell','Pakistan','2025-09-08'),
('AA1000098','Clara Griffin','Australia','2024-10-16'),
('AA1000099','Leo Diaz','USA','2025-07-30'),
('AA1000100','Hazel Hayes','UK','2026-04-02');

CREATE TABLE places (
    pid INT(11) DEFAULT NULL,
    pname VARCHAR(100) DEFAULT NULL,
    pcity VARCHAR(100) DEFAULT NULL,
    image VARCHAR(255) NOT NULL
);

CREATE TABLE users (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('user', 'admin') NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email (email)
);
CREATE TABLE travel_agent (
    aid INT(11) DEFAULT NULL,
    afname VARCHAR(100) DEFAULT NULL,
    aemail VARCHAR(100) DEFAULT NULL,
    aphone BIGINT DEFAULT NULL,
    acity VARCHAR(20) DEFAULT NULL
);
