
-- Old customer table definition 
CREATE TABLE Customer( 
 CustomerID SERIAL PRIMARY KEY, 
 Username VARCHAR(50) UNIQUE NOT NULL, 
 Email VARCHAR(100) UNIQUE NOT NULL,
 Password VARCHAR(32) NOT NULL, 
 FirstName VARCHAR(20) NOT NULL,
 LastName VARCHAR(20), 
 phoneNumber VARCHAR(13) UNIQUE,
 Address VARCHAR(255), 
 DateOfBirth DATE
 );

-- Renamed the table to users and column to usersID

ALTER TABLE customer RENAME TO users;
ALTER TABLE users RENAME COLUMN customerID TO userID;


 -- Queries entered in pgAdmin instead of dropping the entire table 

 ALTER TABLE users
 ADD COLUMN isBanned BOOLEAN DEFAULT FALSE; 

 ALTER TABLE users 
 ADD COLUMN isAdmin BOOLEAN DEFAULT FALSE;  -- false: customer, true: admin

 ALTER TABLE users
 ADD COLUMN createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

 -- The new users table definition 
CREATE TABLE users( 
 userID SERIAL PRIMARY KEY, 
 username VARCHAR(50) UNIQUE NOT NULL, 
 email VARCHAR(100) UNIQUE NOT NULL,
 password VARCHAR(32) NOT NULL, 
 firstName VARCHAR(20) NOT NULL,
 lastName VARCHAR(20), 
 phoneNumber VARCHAR(13) UNIQUE,
 address VARCHAR(255), 
 isAdmin BOOLEAN DEFAULT FALSE,
 isBanned BOOLEAN DEFAULT FALSE,
 birthDate DATE,
 createdAT TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );



 -- Mock values 
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('hshotbolt0', 'hshotbolt0@umn.edu', 'aF0@f~%Bz', 'Halli', 'Shotbolt', '313-874-7580', '7117 Mallory Point', false, false, '1944-02-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cmccombe1', 'cmccombe1@godaddy.com', 'mG8+Hm4\OJ_&', 'Clarissa', 'McCombe', '351-679-0440', '2356 Jenna Trail', true, false, '1927-12-01');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bbutten2', 'bbutten2@java.com', 'hY3<|DLg1y+O1', 'Barry', 'Butten', '841-935-7450', '32127 Surrey Lane', false, false, '1946-07-05');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('ttaggert3', 'ttaggert3@usa.gov', 'aB2"KNg(r,', 'Thorsten', 'Taggert', '606-997-9820', '163 Menomonie Circle', true, true, '1999-11-19');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('maberchirder4', 'maberchirder4@alexa.com', 'jN9@+N!PH', 'Meggie', 'Aberchirder', '609-643-0386', '9408 North Trail', true, false, '1923-09-05');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('akleinstein5', 'akleinstein5@sphinn.com', 'jZ5*a_u?RD8t7P', 'Adrian', 'Kleinstein', '466-963-4630', '94 Mayfield Alley', false, false, '2014-01-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('khamblin6', 'khamblin6@google.co.jp', 'kF3\06$k', 'Kaleena', 'Hamblin', '621-593-1951', '4679 Grover Plaza', true, false, '1929-06-23');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('wludman7', 'wludman7@people.com.cn', 'qD0~/!/(x2s)', 'Weidar', 'Ludman', '222-594-5304', '92009 Granby Crossing', true, true, '1998-10-03');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mhamer8', 'mhamer8@yelp.com', 'bP1{1.&HC,`Pj', 'Mechelle', 'Hamer', '368-364-6378', '7 Aberg Parkway', true, true, '2003-02-28');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('rcastillou9', 'rcastillou9@usa.gov', 'dU6*R$Em=*6Ye', 'Robinson', 'Castillou', '338-542-6256', '8199 Muir Terrace', false, false, '1969-02-09');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('latrilla', 'latrilla@disqus.com', 'cA4.}rMB', 'Liza', 'Atrill', '500-128-9051', '035 Kensington Circle', true, true, '1982-04-19');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('hredmondb', 'hredmondb@etsy.com', 'yI1''"XymM*Fe`"', 'Hebert', 'Redmond', '564-510-8455', '981 Mitchell Park', false, false, '1904-08-14');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('fjosipovitzc', 'fjosipovitzc@hud.gov', 'aZ1<NGwLu4}R', 'Faye', 'Josipovitz', '265-537-6707', '1 Granby Court', false, true, '1929-03-11');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bkinghd', 'bkinghd@prnewswire.com', 'hK3+U4O+Bmw|WB@c', 'Bran', 'Kingh', '758-113-1220', '8853 Warbler Center', true, false, '2017-12-18');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('zsullye', 'zsullye@disqus.com', 'oZ8?<YZJ.', 'Zonda', 'Sully', '419-717-4943', '142 Upham Pass', false, true, '2017-03-30');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mechf', 'mechf@mysql.com', 'bL4+z2)D7%UT,jg', 'Mariette', 'Ech', '246-490-5596', '2055 Vera Street', true, false, '1903-01-06');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('sjaffrag', 'sjaffrag@cdc.gov', 'dV5?Mib!/`~', 'Sonja', 'Jaffra', '761-771-4057', '716 Nova Avenue', true, true, '1909-08-02');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('sfaussetth', 'sfaussetth@google.es', 'oC4`JMw<ZRE', 'Selby', 'Faussett', '362-912-4539', '813 Hansons Pass', true, false, '1941-04-26');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('lcatlingi', 'lcatlingi@squarespace.com', 'jX0{eNuN9D/5p', 'Lefty', 'Catling', '650-535-1599', '699 High Crossing Parkway', true, true, '2018-12-21');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('pmaytumj', 'pmaytumj@foxnews.com', 'rM1$&(d1Z*', 'Pen', 'Maytum', '304-150-3552', '79370 Garrison Road', true, true, '1982-09-27');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mcauserk', 'mcauserk@wordpress.com', 'jU5/>3>(?q', 'Marice', 'Causer', '877-403-7718', '0 Hudson Center', false, false, '1954-05-02');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mgulbergl', 'mgulbergl@bloglovin.com', 'xA1/i@SazbI', 'Maryanna', 'Gulberg', '442-912-6906', '71500 Ryan Point', true, false, '1996-07-16');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('kknowlerm', 'kknowlerm@sakura.ne.jp', 'hY7_4G=@', 'Kittie', 'Knowler', '323-237-5307', '50674 Hazelcrest Avenue', false, true, '1905-04-24');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('jkainesn', 'jkainesn@last.fm', 'uE9"7JlM.6v?', 'Janek', 'Kaines', '999-772-2094', '60498 Burrows Parkway', false, false, '1963-09-13');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cdacombeo', 'cdacombeo@addtoany.com', 'wX2!.vy(04', 'Catrina', 'Dacombe', '807-879-8635', '64 Aberg Parkway', true, true, '1943-11-29');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('edraceyp', 'edraceyp@themeforest.net', 'bT1<U#o0>ms7', 'Esta', 'Dracey', '677-689-5107', '8 Mayfield Junction', false, true, '1975-02-06');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('jlecordierq', 'jlecordierq@globo.com', 'oB5}$n+KU', 'Jimmie', 'Lecordier', '403-134-5584', '19 Old Gate Way', false, true, '2017-06-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('blinacrer', 'blinacrer@hexun.com', 'mZ1~d4XV!ksXID', 'Barnebas', 'Linacre', '523-127-1759', '17 Heffernan Lane', false, true, '1931-02-16');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bohowbanes', 'bohowbanes@miibeian.gov.cn', 'xG4%K4qcNdpVpJ', 'Barbi', 'O''Howbane', '241-228-2947', '829 Macpherson Way', false, false, '2016-05-21');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('clivockt', 'clivockt@goo.ne.jp', 'lG5|AEdVYd', 'Charlena', 'Livock', '445-821-5985', '18 Banding Point', true, false, '1991-07-26');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('lbesnardeauu', 'lbesnardeauu@bbb.org', 'bT9>c)1y|zaE''8', 'Leta', 'Besnardeau', '339-608-9373', '1 Mifflin Park', false, false, '1984-05-06');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('hranglev', 'hranglev@acquirethisname.com', 'nH3|qL9}WaYZ%', 'Hobart', 'Rangle', '178-886-2828', '125 Atwood Way', true, true, '2004-06-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('sseakingw', 'sseakingw@privacy.gov.au', 'hH6~=Z#,', 'Stinky', 'Seaking', '495-430-8727', '2 Tennyson Alley', false, false, '2014-03-24');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('jfaullx', 'jfaullx@creativecommons.org', 'kO8,OE2_', 'Jaimie', 'Faull', '408-276-7878', '830 Shopko Junction', true, false, '1930-04-15');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('ischimanky', 'ischimanky@mit.edu', 'zA3|<)!_H!Mz*cY', 'Ingar', 'Schimank', '226-294-7871', '5848 Hauk Junction', false, true, '2017-06-17');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('wswinneyz', 'wswinneyz@lycos.com', 'mE0+6s0''i', 'Waly', 'Swinney', '470-902-2206', '59806 Autumn Leaf Hill', true, false, '1905-08-16');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('lmellmoth10', 'lmellmoth10@phoca.cz', 'oG0(JI|~o"tt/OI', 'Langston', 'Mellmoth', '236-470-9937', '681 Graceland Drive', false, false, '1953-03-02');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mmcconville11', 'mmcconville11@icio.us', 'tO1&GwK*c_a/66', 'Marnie', 'McConville', '648-646-7042', '960 Commercial Lane', true, false, '1919-01-08');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('asollowaye12', 'asollowaye12@imageshack.us', 'hF4=J4kh3)m"3v', 'Amalea', 'Sollowaye', '315-206-4327', '9 Lakeland Trail', true, false, '2012-10-18');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cswaby13', 'cswaby13@mysql.com', 'dQ4~T{3"zo,$', 'Claiborn', 'Swaby', '857-713-5292', '828 Northwestern Center', false, true, '1970-07-01');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('dcoulston14', 'dcoulston14@ed.gov', 'eR5/EmolZ/iM}TJ)', 'Devland', 'Coulston', '720-881-5648', '9 Clyde Gallagher Circle', true, true, '2015-05-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cagar15', 'cagar15@wikimedia.org', 'uV6&s"ZyWA`K<', 'Corinna', 'Agar', '425-388-8644', '75 Judy Drive', false, true, '1986-11-11');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tohearn16', 'tohearn16@printfriendly.com', 'oH7*wI/P,', 'Thurstan', 'O''Hearn', '181-790-1845', '8190 Trailsway Hill', true, false, '1903-10-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mmulqueeny17', 'mmulqueeny17@mozilla.org', 'rV6`@UH3', 'Myrle', 'Mulqueeny', '304-821-7022', '60 Northfield Pass', true, true, '1937-10-19');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bbourdas18', 'bbourdas18@examiner.com', 'dP0=bUJOpQMIU)2|', 'Baxie', 'Bourdas', '570-750-4867', '8 Golden Leaf Road', true, true, '1917-09-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('lpunt19', 'lpunt19@jimdo.com', 'jS8&.ea{rOAz<}0S', 'Lannie', 'Punt', '984-585-0158', '3615 Brickson Park Alley', false, true, '1985-09-24');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('ldey1a', 'ldey1a@nsw.gov.au', 'iF5''Y''/E=h%/nu5', 'Lexine', 'Dey', '617-899-6848', '120 Lotheville Court', true, true, '1998-03-18');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bthake1b', 'bthake1b@sakura.ne.jp', 'bY6''tna&}93$IB9h', 'Bess', 'Thake', '179-735-9971', '92 Marcy Way', false, false, '2012-02-25');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('wpistol1c', 'wpistol1c@facebook.com', 'qN1!'',94', 'Wallas', 'Pistol', '396-957-4999', '12 Pond Terrace', true, false, '1902-08-07');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bdemattia1d', 'bdemattia1d@goo.gl', 'sY7+}|_wTaeLY', 'Bertrand', 'De Mattia', '615-126-6470', '32781 Oneill Point', false, true, '1936-12-13');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('ggeockle1e', 'ggeockle1e@dailymotion.com', 'rP1<1)%j=Dt>', 'Gerrard', 'Geockle', '976-779-8452', '4 Warbler Pass', true, false, '1929-04-21');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('damberson1f', 'damberson1f@sciencedaily.com', 'vR7<|XJ`', 'Devondra', 'Amberson', '734-836-5916', '08 Carberry Center', false, true, '2022-03-26');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mtremoulet1g', 'mtremoulet1g@reference.com', 'nX0\1V&q@"g', 'Marchelle', 'Tremoulet', '855-302-6427', '919 Tennessee Point', true, true, '1988-07-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('clarking1h', 'clarking1h@blogger.com', 'qF9&ZfqKX', 'Clemence', 'Larking', '500-941-9056', '68422 Atwood Point', false, true, '1994-05-17');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cvanshin1i', 'cvanshin1i@cbslocal.com', 'oH1"49XwMB{Db', 'Cybil', 'Vanshin', '537-112-7358', '2953 Marquette Court', false, true, '1909-02-13');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('acumpsty1j', 'acumpsty1j@irs.gov', 'uB3+k.m)>', 'Audrie', 'Cumpsty', '854-208-4389', '03 Waywood Hill', false, true, '1924-11-25');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('sbodega1k', 'sbodega1k@cpanel.net', 'fQ4!>emDTQ8nHfy', 'Shay', 'Bodega', '477-645-2091', '5746 High Crossing Terrace', false, false, '1921-04-26');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bpessel1l', 'bpessel1l@tmall.com', 'eZ9.v~8K"f', 'Barby', 'Pessel', '748-994-2259', '40 Moland Court', false, true, '1912-08-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('jcornhill1m', 'jcornhill1m@ox.ac.uk', 'bP2,q}gjA9PH', 'Jorrie', 'cornhill', '957-793-6064', '06 Melby Pass', false, false, '1989-11-01');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('flevene1n', 'flevene1n@blog.com', 'eU5"vs4v#ND*X', 'Francois', 'Levene', '642-158-4888', '903 Banding Court', false, true, '1903-01-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('llago1o', 'llago1o@ebay.com', 'bZ4+f<\MQp', 'Lian', 'Lago', '771-874-6480', '3 Sutherland Plaza', false, false, '1976-09-30');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('shuggins1p', 'shuggins1p@sphinn.com', 'nX1<_e4\KkC+P+6', 'Sherill', 'Huggins', '890-228-1681', '521 Lindbergh Way', false, true, '1982-02-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('lpanks1q', 'lpanks1q@github.io', 'rH9,*Yh6=P', 'Lezlie', 'Panks', '459-640-9934', '0 Prairie Rose Trail', false, false, '2005-04-01');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('rdondon1r', 'rdondon1r@mtv.com', 'lQ1&*BD?`q1w', 'Renado', 'Dondon', '787-274-7456', '5545 Dwight Road', false, true, '1937-12-25');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bdomoney1s', 'bdomoney1s@nytimes.com', 'uY7@Wo%~|)_', 'Blondy', 'Domoney', '774-602-2876', '1 Dryden Crossing', false, true, '1916-08-28');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('gkidsley1t', 'gkidsley1t@sakura.ne.jp', 'sU2!upgefF''p9TB', 'Gil', 'Kidsley', '996-302-7429', '070 Di Loreto Center', true, true, '2011-12-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('kwilkerson1u', 'kwilkerson1u@prnewswire.com', 'kT2*B)s+e', 'Kacey', 'Wilkerson', '269-635-9650', '11414 Marquette Terrace', true, true, '1981-11-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mpullar1v', 'mpullar1v@opera.com', 'uS6?i'',qhax', 'Montgomery', 'Pullar', '451-575-3398', '5155 Monument Circle', false, false, '1964-08-06');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('sjahnel1w', 'sjahnel1w@bandcamp.com', 'pY2_L09Dk8', 'Saul', 'Jahnel', '426-953-6820', '1 Alpine Court', false, true, '1910-02-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cwingeatt1x', 'cwingeatt1x@paginegialle.it', 'aM0<9J!)5iAx5', 'Carrol', 'Wingeatt', '873-540-0637', '09659 School Road', true, false, '2017-10-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('malves1y', 'malves1y@europa.eu', 'uH0~XUWX{n1(', 'Minta', 'Alves', '214-192-3792', '99 Kensington Avenue', true, true, '1914-02-10');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('dbrownsea1z', 'dbrownsea1z@multiply.com', 'dZ9~vECC"B4)Gni', 'Dougie', 'Brownsea', '760-475-3906', '146 Russell Plaza', false, true, '1911-02-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('rjudd20', 'rjudd20@canalblog.com', 'xA8&XWD8', 'Roosevelt', 'Judd', '413-374-9561', '84 Sauthoff Street', false, true, '1901-04-20');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('trosewarne21', 'trosewarne21@sun.com', 'oD0"Bh&L>UJy5<$g', 'Tani', 'Rosewarne', '855-278-2720', '4 Warbler Hill', true, true, '1968-12-17');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('cjambrozek22', 'cjambrozek22@topsy.com', 'kC5=x$h4ky\_MAe', 'Clair', 'Jambrozek', '175-985-9136', '44 Stuart Junction', true, false, '1946-09-10');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('npreddle23', 'npreddle23@xrea.com', 'nK5>.}bO&3A', 'Nana', 'Preddle', '143-921-0932', '689 Emmet Court', false, true, '1920-06-26');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('disworth24', 'disworth24@usatoday.com', 'wL5"l&`\(Ok', 'Darrick', 'Isworth', '931-919-1432', '019 Northfield Junction', false, true, '1955-06-06');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('rdrogan25', 'rdrogan25@bbb.org', 'rH8?i=EDhR4!=y', 'Raquel', 'Drogan', '876-913-4936', '45 Oakridge Trail', false, false, '1954-10-14');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tgoodayle26', 'tgoodayle26@businesswire.com', 'uJ6)/irN0pGY', 'Teri', 'Goodayle', '590-131-0776', '6 John Wall Drive', true, true, '2011-09-12');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mspiby27', 'mspiby27@mayoclinic.com', 'dD6>L/_R/OVY9u', 'Maje', 'Spiby', '312-558-9456', '0600 Continental Parkway', true, false, '1983-06-17');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tjaquin28', 'tjaquin28@cmu.edu', 'pZ0|\f+u', 'Talbot', 'Jaquin', '382-128-3462', '51825 Logan Circle', false, true, '1918-12-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('scomins29', 'scomins29@tumblr.com', 'iN0/Q!=u$}EGwVIp', 'Sue', 'Comins', '245-652-3653', '9101 Kings Drive', true, false, '1991-11-05');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('jravel2a', 'jravel2a@nbcnews.com', 'fI7.C@n+', 'Jone', 'Ravel', '184-283-3653', '4149 Troy Trail', false, true, '1910-03-04');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tgierth2b', 'tgierth2b@mysql.com', 'zF8>LiI=gTFu', 'Tabbie', 'Gierth', '827-454-8367', '709 Union Street', false, true, '1953-01-25');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('gdunphy2c', 'gdunphy2c@google.co.jp', 'nZ4"_.xENEeXUnU"', 'Gael', 'Dunphy', '381-124-3382', '59091 Moland Crossing', true, true, '2013-08-19');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('eassad2d', 'eassad2d@ifeng.com', 'dO6`fWaLIi9xb', 'Edd', 'Assad', '179-627-6782', '83942 Schlimgen Pass', true, false, '2012-06-10');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('bchin2e', 'bchin2e@mlb.com', 'jS8"Ai{}u}zTgt+0', 'Bronny', 'Chin', '360-813-1767', '380 Twin Pines Circle', true, true, '1990-09-29');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('mfrodsham2f', 'mfrodsham2f@netlog.com', 'fZ2(1bYw''L2EpA,"', 'Montgomery', 'Frodsham', '201-881-0347', '96 East Point', true, true, '2020-10-24');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('afaas2g', 'afaas2g@unc.edu', 'vN0|v\{g?', 'Aubrey', 'Faas', '199-212-7335', '9 Namekagon Center', false, true, '2018-02-13');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('thuscroft2h', 'thuscroft2h@spotify.com', 'fW6_,C@V', 'Ted', 'Huscroft', '901-125-6158', '61 Florence Terrace', false, false, '2007-11-18');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('htaysbil2i', 'htaysbil2i@digg.com', 'fW0\=}Dsz3!&', 'Hirsch', 'Taysbil', '843-775-3418', '22 Arapahoe Park', false, true, '1985-12-14');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('atribbeck2j', 'atribbeck2j@php.net', 'oP7/?(SLgM', 'Alaine', 'Tribbeck', '604-572-8455', '7 Hanson Trail', true, false, '1981-07-14');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('gscollick2k', 'gscollick2k@gnu.org', 'lT5?IcP}A', 'Gwen', 'Scollick', '639-505-9160', '22790 Sycamore Avenue', false, false, '1957-07-30');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('kludgrove2l', 'kludgrove2l@cyberchimps.com', 'gF7(yr4puNshP+', 'Kelwin', 'Ludgrove', '183-812-3644', '5 Graedel Alley', true, true, '1901-04-08');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('kmccomiskey2m', 'kmccomiskey2m@sphinn.com', 'yT5%l#VFJv#E', 'Kerr', 'McComiskey', '241-427-8708', '27 Pearson Circle', true, false, '1915-08-28');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('hrendle2n', 'hrendle2n@rediff.com', 'cJ8/>K<8m?', 'Hastie', 'Rendle', '741-308-5639', '29 Coleman Junction', false, false, '1936-06-22');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tsneezum2o', 'tsneezum2o@friendfeed.com', 'dN2>f{MWrsb', 'Taffy', 'Sneezum', '213-272-5906', '2 Gateway Terrace', false, false, '1996-03-02');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('tsoutheran2p', 'tsoutheran2p@over-blog.com', 'dR4|n(|5b"I>\f', 'Theo', 'Southeran', '114-139-3584', '91 Elka Lane', false, false, '2017-01-31');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('wcorballis2q', 'wcorballis2q@devhub.com', 'zW4=#sLZV>a3', 'Washington', 'Corballis', '222-877-6763', '889 Melody Parkway', false, true, '1989-11-09');
insert into users (username, email, password, firstName, lastName, phoneNumber, address, isAdmin, isBanned, birthDate) values ('vmacdunleavy2r', 'vmacdunleavy2r@360.cn', 'qA1`,WH0', 'Vasily', 'MacDunleavy', '393-871-7112', '27 Scofield Drive', false, true, '1938-08-08');
