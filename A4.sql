
 create table province_territory
 ( 
   province_territory_id int unsigned not null primary key,
   province_territory_name  varchar(25) not null,
   abbreviation varchar(4) not null
  );
  
  
  create table political_party  
  (
    party_id int unsigned not null primary key,
    party_name varchar(20) not null
   );
   
   create table electorial_district
   (
     district_id  int unsigned not null primary key,
	 province_territory_id int unsigned not null,
	 district_name varchar(30) not null,
	 foreign key (province_territory_id) references province_territory (province_territory_id)
	);
	
	create table candidate 
	(
	 candidate_id int unsigned not null primary key,
	 district_id  int unsigned not null,
	 party_id int unsigned not null,
	 surname  varchar(20) not null,
	 given_names varchar(15) not null,
	 foreign key (district_id) references electorial_district (district_id),
	 foreign key (party_id) references political_party (party_id)
	);
	
	create table polling_location
	(
	 location_id int unsigned not null primary key,
	 location_name varchar(45) not null,
	 district_id int unsigned not null,
	 rejected_count int unsigned,
	 FOREIGN KEY (district_id) REFERENCES electorial_district (district_id)
	);
	
	create table registered_voter
	(
	 voter_id int unsigned not null primary key,
	 district_id int unsigned not null,
	 voter_surname varchar(25) not null,
	 voter_given_names varchar(20) not null,
	 address varchar(50) not null,
	 birth_date date not null,
	 location_id int unsigned not null,
     flag tinyint default 0,
	 foreign key (district_id) references electorial_district (district_id),
	 foreign key (location_id) references polling_location (location_id)
	 );
	 
	 create table vote_tally 
	 (location_id int unsigned not null,
	  candidate_id int unsigned not null,
	  final_count int unsigned not null,
	  primary key(candidate_id,location_id),
	  foreign key (candidate_id) REFERENCES candidate (candidate_id),
	  foreign key (location_id) REFERENCES polling_location (location_id)
	 );
	 
	
	  --province territory
	  insert into province_territory values(10,' Newfoundland and Labrador','NL');
      insert into province_territory values(11,' Prince Edward Island','PE');
	  insert into province_territory values(12,' Nova Scotia','NS'); 
	  insert into province_territory values(13,' New Brunswick','NB'); 
	  insert into province_territory values(24,' Quebec','QC'); 
	  insert into province_territory values(35,' Ontario','ON');
	  insert into province_territory values(46,' Manitoba','MB'); 
	  insert into province_territory values(47,' Saskatchewan','SK'); 
	  insert into province_territory values(48,' Alberta','AB'); 
	  insert into province_territory values(49,' British Columbia','BC');
	  insert into province_territory values(60,' Yukon','YT'); 
	  insert into province_territory values(61,' Northwest Territories', 'NT');
      insert into province_territory values(62,' Nunavut','NU'); 


      
	  insert into political_party values(1000, 'Independent');
	  insert into political_party values(1001, 'Liberal'); 
	  insert into political_party values(1002, 'Conservative'); 
	  insert into political_party values(1003, 'NDP-New Democratic Party'); 
	  insert into political_party values(1004, 'Green Party'); 
	  insert into political_party values(1005, 'People''s Party - PPC');
	  insert into political_party values(1006, 'Christian Heritage Party'); 
	  insert into political_party values(1007, 'Communist');
	  insert into political_party values(1008, 'Parti Rhinocéros Party'); 
	  insert into political_party values(1009, 'Marxist-Leninist');
	  insert into political_party values(1010, 'Free Party Canada');
	  insert into political_party values(1011, 'Libertarian'); 
	 
	
--electorial district

 prince edward island
  insert into electorial_district values(11001,11,'Cardigan');
  insert into electorial_district values(11002,11,'Charlottetown');
  insert into electorial_district values(11003,11,'Egmont');
  insert into electorial_district values(11004,11,'Malpeque');
  
  NS 12
 insert into electorial_district values(12001,12,'Cape Breton–Canso');
insert into electorial_district values(12002,12,'Central Nova');
insert into electorial_district values(12003,12,'Cumberland–Colchester');
insert into electorial_district values(12004,12,'Dartmouth–Cole Harbour');
insert into electorial_district values(12005,12,'Halifax');
insert into electorial_district values(12006,12,'Halifax West');
insert into electorial_district values(12007,12,'Kings–Hants');
insert into electorial_district values(12008,12,'Sackville–Preston–Chezzetcook');
insert into electorial_district values(12009,12,'South Shore–St. Margarets');
insert into electorial_district values(12010,12,'Sydney–Victoria');
insert into electorial_district values(12011,12,'West Nova');
  
  NB 13
insert into electorial_district values(13001,13,'Acadie–Bathurst');
insert into electorial_district values(13002,13,'Beauséjour');
insert into electorial_district values(13003,13,'Fredericton ');
insert into electorial_district values(13004,13,'Fundy Royal ');
insert into electorial_district values(13005,13,'Madawaska–Restigouche');
insert into electorial_district values(13006,13,'Miramichi–Grand Lake');
insert into electorial_district values(13007,13,'Moncton–Riverview–Dieppe');
insert into electorial_district values(13008,13,'New Brunswick Southwest');
insert into electorial_district values(13009,13,'Saint John–Rothesay');
insert into electorial_district values(13010,13,'Tobique–Mactaquac');

--Candidates 
--Fredericton
insert into candidate values(100,13003,1001,'Atwin','Jenica');
insert into candidate values(101,13003,1002,'Johnson','Andrea');
insert into candidate values(102,13003,1011,'Kirby','Brandon');
insert into candidate values(103,13003,1004,'O''Byrne','Nicole');
insert into candidate values(104,13003,1003,'Oldenburg','Shawn');
insert into candidate values(105,13003,1007,'Patternson','June');
insert into candidate values(106,13003,1000,'Smith','Jen');
--saint John
insert into candidate values(200,13009,1001,'Long','Wagne');
insert into candidate values(201,13009,1004,'Mcallister','Ann');
insert into candidate values(202,13009,1002,'Norton','Mel');
insert into candidate values(203,13009,1003,'Paulin','Don');
insert into candidate values(204,13009,1005,'Peraira','Nicholas');
  
  
  
  --Voters
 insert into registered_voter values(1,13003,'Tony','Stark','456 York Street','1991-09-01',13003001,null);
insert into registered_voter values(2,13003,'Bruce','Buffer','567 Prospect Street','2002-10-11',13003020,null);
insert into registered_voter values(3,13003,'Joe','ROgan','234 Regent Street','2002-01-01',13003023,null);
insert into registered_voter values(4,13003,'Conor','Mcnugget','566 Dublin Street','2000-02-09',13003030,null);
insert into registered_voter values(5,13003,'Dana','White','113 King Street','2000-04-12',13003029,null);

  
  
  
  --update 
  update registered_voter 
  set flag = 1
  where voter_id = 1;

  --vote tally
  --Frederciton polling location 4
insert into vote_tally values(13003004,100,500);
insert into vote_tally values(13003004,101,100);
insert into vote_tally values(13003004,102,660);
insert into vote_tally values(13003004,103,234);
insert into vote_tally values(13003004,104,785);
insert into vote_tally values(13003004,105,223);
insert into vote_tally values(13003004,106,534);
--- Polling Loaction 5 
insert into vote_tally values(13003005,100,113);
insert into vote_tally values(13003005,101,122);
insert into vote_tally values(13003005,102,890);
insert into vote_tally values(13003005,103,333);
insert into vote_tally values(13003005,104,223);
insert into vote_tally values(13003005,105,235);
insert into vote_tally values(13003005,106,667);

  
  
  
  
  
  
  
  
  -- rename column1 to temp_column
ALTER TABLE candidate
RENAME COLUMN party_id TO temp_column;

-- rename column2 to column1
ALTER TABLE candidate
RENAME COLUMN district_id TO party_id;

-- rename temp_column to column2
ALTER TABLE candidate
RENAME COLUMN temp_column TO district_id;

ALTER TABLE candidate
 CHANGE party_id
 temp int ;