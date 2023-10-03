 
 
 
  select given_names,surname,district_name
  from candidate natural join province_territory natural join electorial_district natural join political_party
  where party_name = 'Green Party' and province_territory_name = ' New Brunswick ';
   
   
  insert into candidate values(205,13005,1004,'Chophel','Sonam');
  insert into candidate values(206,13009,1004,'Jones','Anderson');
  
  select district_name
  from electorial_district natural join province_territory
  where province_territory_name = ' New Brunswick ';
  
  insert into registered_voter values(6,13003,'Anik','Jhon','878 Kitchen Street',2000-05-12, 13003029,NULL);
  
  select location_name,voter_surname,voter_given_names,address
  from registered_voter natural join polling_location 
  where location_name = 'Geary Lion''s club' and flag is null;
  
  
  
  select district_name as District,location_id,location_name as Location
  from registered_voter natural join polling_location natural join electorial_district natural join vote_tally
  where final_count>=1;
  
  select distinct district_name as District,location_id,location_name as Location
  from registered_voter natural join polling_location natural join electorial_district natural join vote_tally
  where final_count>=1;

  insert into registered_voter values(7,13003,'Cena','John','878 Kitchen Street',2000-05-12, 13003029,1);
    insert into registered_voter values(8,13003,'Uzumaki','Naruto','609 Kitchen Street',2000-05-12, 13003029,1);
	insert into registered_voter values(9,13003,'Tony','Ferguson','456 pine Street',1991-09-01,13003001,1);
	
	
insert into vote_tally values(13003001, 7397, 575);
insert into vote_tally values(13003002, 7397, 548);
insert into vote_tally values(13003003, 7397, 572);
insert into vote_tally values(13003004, 7397, 575);
insert into vote_tally values(13003005, 7397, 507);
insert into vote_tally values(13003006, 7397, 501);
insert into vote_tally values(13003007, 7397, 510);
insert into vote_tally values(13003008, 7397, 563);
insert into vote_tally values(13003009, 7397, 578);
insert into vote_tally values(13003010, 7397, 584);
insert into vote_tally values(13003011, 7397, 511);
insert into vote_tally values(13003012, 7397, 572);
insert into vote_tally values(13003013, 7397, 498);
insert into vote_tally values(13003014, 7397, 535);
insert into vote_tally values(13003015, 7397, 597);
insert into vote_tally values(13003016, 7397, 537);
insert into vote_tally values(13003017, 7397, 531);
insert into vote_tally values(13003018, 7397, 502);
insert into vote_tally values(13003019, 7397, 491);
insert into vote_tally values(13003020, 7397, 533);
insert into vote_tally values(13003021, 7397, 528);
insert into vote_tally values(13003022, 7397, 528);
insert into vote_tally values(13003023, 7397, 591);
insert into vote_tally values(13003024, 7397, 579);
insert into vote_tally values(13003025, 7397, 569);
insert into vote_tally values(13003026, 7397, 533);
insert into vote_tally values(13003027, 7397, 538);
insert into vote_tally values(13003028, 7397, 558);
insert into vote_tally values(13003029, 7397, 532);
insert into vote_tally values(13003030, 7397, 540);
insert into vote_tally values(13003001, 7398, 577);
insert into vote_tally values(13003002, 7398, 519);
insert into vote_tally values(13003003, 7398, 492);
insert into vote_tally values(13003004, 7398, 517);
insert into vote_tally values(13003005, 7398, 512);
insert into vote_tally values(13003006, 7398, 532);
insert into vote_tally values(13003007, 7398, 509);
insert into vote_tally values(13003008, 7398, 561);
insert into vote_tally values(13003009, 7398, 547);
insert into vote_tally values(13003010, 7398, 579);
insert into vote_tally values(13003011, 7398, 484);
insert into vote_tally values(13003012, 7398, 579);
insert into vote_tally values(13003013, 7398, 577);
insert into vote_tally values(13003014, 7398, 485);
insert into vote_tally values(13003015, 7398, 505);
insert into vote_tally values(13003016, 7398, 488);
insert into vote_tally values(13003017, 7398, 560);
insert into vote_tally values(13003018, 7398, 490);
insert into vote_tally values(13003019, 7398, 560);
insert into vote_tally values(13003020, 7398, 562);
insert into vote_tally values(13003021, 7398, 560);
insert into vote_tally values(13003022, 7398, 573);
insert into vote_tally values(13003023, 7398, 529);
insert into vote_tally values(13003024, 7398, 507);
insert into vote_tally values(13003025, 7398, 490);
insert into vote_tally values(13003026, 7398, 523);
insert into vote_tally values(13003027, 7398, 578);
insert into vote_tally values(13003028, 7398, 529);
insert into vote_tally values(13003029, 7398, 558);
insert into vote_tally values(13003030, 7398, 332);
insert into vote_tally values(13003001, 7399, 9);
insert into vote_tally values(13003002, 7399, 8);
insert into vote_tally values(13003003, 7399, 8);
insert into vote_tally values(13003004, 7399, 7);
insert into vote_tally values(13003005, 7399, 8);
insert into vote_tally values(13003006, 7399, 8);
insert into vote_tally values(13003007, 7399, 9);
insert into vote_tally values(13003008, 7399, 9);
insert into vote_tally values(13003009, 7399, 7);
insert into vote_tally values(13003010, 7399, 8);
insert into vote_tally values(13003011, 7399, 9);
insert into vote_tally values(13003012, 7399, 8);
insert into vote_tally values(13003013, 7399, 8);
insert into vote_tally values(13003014, 7399, 9);
insert into vote_tally values(13003015, 7399, 8);
insert into vote_tally values(13003016, 7399, 9);
insert into vote_tally values(13003017, 7399, 8);
insert into vote_tally values(13003018, 7399, 8);
insert into vote_tally values(13003019, 7399, 8);
insert into vote_tally values(13003020, 7399, 7);
insert into vote_tally values(13003021, 7399, 9);
insert into vote_tally values(13003022, 7399, 8);
insert into vote_tally values(13003023, 7399, 8);
insert into vote_tally values(13003024, 7399, 8);
insert into vote_tally values(13003025, 7399, 8);
insert into vote_tally values(13003026, 7399, 8);
insert into vote_tally values(13003027, 7399, 7);
insert into vote_tally values(13003028, 7399, 8);
insert into vote_tally values(13003029, 7399, 7);
insert into vote_tally values(13003030, 7399, 0);
insert into vote_tally values(13003001, 7400, 185);
insert into vote_tally values(13003002, 7400, 180);
insert into vote_tally values(13003003, 7400, 179);
insert into vote_tally values(13003004, 7400, 180);
insert into vote_tally values(13003005, 7400, 180);
insert into vote_tally values(13003006, 7400, 171);
insert into vote_tally values(13003007, 7400, 175);
insert into vote_tally values(13003008, 7400, 187);
insert into vote_tally values(13003009, 7400, 180);
insert into vote_tally values(13003010, 7400, 171);
insert into vote_tally values(13003011, 7400, 179);
insert into vote_tally values(13003012, 7400, 200);
insert into vote_tally values(13003013, 7400, 189);
insert into vote_tally values(13003014, 7400, 179);
insert into vote_tally values(13003015, 7400, 188);
insert into vote_tally values(13003016, 7400, 206);
insert into vote_tally values(13003017, 7400, 178);
insert into vote_tally values(13003018, 7400, 183);
insert into vote_tally values(13003019, 7400, 179);
insert into vote_tally values(13003020, 7400, 176);
insert into vote_tally values(13003021, 7400, 186);
insert into vote_tally values(13003022, 7400, 193);
insert into vote_tally values(13003023, 7400, 196);
insert into vote_tally values(13003024, 7400, 189);
insert into vote_tally values(13003025, 7400, 189);
insert into vote_tally values(13003026, 7400, 173);
insert into vote_tally values(13003027, 7400, 182);
insert into vote_tally values(13003028, 7400, 183);
insert into vote_tally values(13003029, 7400, 187);
insert into vote_tally values(13003030, 7400, 343);
insert into vote_tally values(13003001, 7401, 183);
insert into vote_tally values(13003002, 7401, 176);
insert into vote_tally values(13003003, 7401, 192);
insert into vote_tally values(13003004, 7401, 199);
insert into vote_tally values(13003005, 7401, 194);
insert into vote_tally values(13003006, 7401, 176);
insert into vote_tally values(13003007, 7401, 181);
insert into vote_tally values(13003008, 7401, 203);
insert into vote_tally values(13003009, 7401, 179);
insert into vote_tally values(13003010, 7401, 195);
insert into vote_tally values(13003011, 7401, 179);
insert into vote_tally values(13003012, 7401, 194);
insert into vote_tally values(13003013, 7401, 184);
insert into vote_tally values(13003014, 7401, 187);
insert into vote_tally values(13003015, 7401, 196);
insert into vote_tally values(13003016, 7401, 192);
insert into vote_tally values(13003017, 7401, 172);
insert into vote_tally values(13003018, 7401, 191);
insert into vote_tally values(13003019, 7401, 188);
insert into vote_tally values(13003020, 7401, 176);
insert into vote_tally values(13003021, 7401, 196);
insert into vote_tally values(13003022, 7401, 184);
insert into vote_tally values(13003023, 7401, 174);
insert into vote_tally values(13003024, 7401, 186);
insert into vote_tally values(13003025, 7401, 187);
insert into vote_tally values(13003026, 7401, 181);
insert into vote_tally values(13003027, 7401, 184);
insert into vote_tally values(13003028, 7401, 170);
insert into vote_tally values(13003029, 7401, 180);
insert into vote_tally values(13003030, 7401, 185);
insert into vote_tally values(13003001, 7402, 5);
insert into vote_tally values(13003002, 7402, 6);
insert into vote_tally values(13003003, 7402, 6);
insert into vote_tally values(13003004, 7402, 6);
insert into vote_tally values(13003005, 7402, 7);
insert into vote_tally values(13003006, 7402, 6);
insert into vote_tally values(13003007, 7402, 5);
insert into vote_tally values(13003008, 7402, 6);
insert into vote_tally values(13003009, 7402, 6);
insert into vote_tally values(13003010, 7402, 6);
insert into vote_tally values(13003011, 7402, 6);
insert into vote_tally values(13003012, 7402, 6);
insert into vote_tally values(13003013, 7402, 6);
insert into vote_tally values(13003014, 7402, 5);
insert into vote_tally values(13003015, 7402, 6);
insert into vote_tally values(13003016, 7402, 6);
insert into vote_tally values(13003017, 7402, 5);
insert into vote_tally values(13003018, 7402, 7);
insert into vote_tally values(13003019, 7402, 5);
insert into vote_tally values(13003020, 7402, 6);
insert into vote_tally values(13003021, 7402, 6);
insert into vote_tally values(13003022, 7402, 6);
insert into vote_tally values(13003023, 7402, 5);
insert into vote_tally values(13003024, 7402, 6);
insert into vote_tally values(13003025, 7402, 6);
insert into vote_tally values(13003026, 7402, 6);
insert into vote_tally values(13003027, 7402, 6);
insert into vote_tally values(13003028, 7402, 0);
insert into vote_tally values(13003029, 7402, 0);
insert into vote_tally values(13003030, 7402, 0);
insert into vote_tally values(13003001, 7403, 10);
insert into vote_tally values(13003002, 7403, 11);
insert into vote_tally values(13003003, 7403, 11);
insert into vote_tally values(13003004, 7403, 11);
insert into vote_tally values(13003005, 7403, 11);
insert into vote_tally values(13003006, 7403, 10);
insert into vote_tally values(13003007, 7403, 10);
insert into vote_tally values(13003008, 7403, 11);
insert into vote_tally values(13003009, 7403, 11);
insert into vote_tally values(13003010, 7403, 11);
insert into vote_tally values(13003011, 7403, 11);
insert into vote_tally values(13003012, 7403, 12);
insert into vote_tally values(13003013, 7403, 11);
insert into vote_tally values(13003014, 7403, 11);
insert into vote_tally values(13003015, 7403, 11);
insert into vote_tally values(13003016, 7403, 10);
insert into vote_tally values(13003017, 7403, 12);
insert into vote_tally values(13003018, 7403, 10);
insert into vote_tally values(13003019, 7403, 10);
insert into vote_tally values(13003020, 7403, 12);
insert into vote_tally values(13003021, 7403, 11);
insert into vote_tally values(13003022, 7403, 12);
insert into vote_tally values(13003023, 7403, 11);
insert into vote_tally values(13003024, 7403, 11);
insert into vote_tally values(13003025, 7403, 11);
insert into vote_tally values(13003026, 7403, 11);
insert into vote_tally values(13003027, 7403, 12);
insert into vote_tally values(13003028, 7403, 11);
insert into vote_tally values(13003029, 7403, 3);
insert into vote_tally values(13003030, 7403, 0);


-----------------------------------------------------------------------------------------

insert into candidate values (7397,13003,1001,'Atwin','Jenica');
insert into candidate values (7398,13003,1002,'Johnson', 'Andrea'); 
insert into candidate values (7399,13003,1011,'Kirby','Brandon'); 
insert into candidate values (7400,13003,1004,'O''Byrne','Nicole');
insert into candidate values (7401,13003,1003,'Oldenburg','Shawn');
insert into candidate values (7402,13003,1007,'Patterson', 'June');
insert into candidate values (7403,13003,1000,'Smith','Jen');
 
 select location_name,surname,final_count
 from vote_tally natural join polling_location natural join electorial_district natural join candidate natural join political_party 
 where party_name = 'Liberal' and district_name = 'Fredericton';
 

 
 select location_name as Location,surname as Candidate,final_count as Votes
 from candidate natural join polling_location natural join vote_tally
 where location_name = 'Willie O''Ree Centre' and final_count > 100;
