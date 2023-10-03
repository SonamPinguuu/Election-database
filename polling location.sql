--
-- These are the actual Fredericton-area polling locations for the 2021
-- general election.
--
-- rejected_ballot_count should be null until voting ceases and all ballots are counted.
-- null is used rather than 0 (zero) to indicate "counting has not taken place yet"
-- because it is possible (though unlikely) that a polling location could end up 
-- with zero rejected ballots. A value of 0 would indicate "we counted and there 
-- were no rejected ballots".
--
insert into polling_location values (13003001, 'Willie O''Ree Centre', 13003, null);
insert into polling_location values (13003002, 'Brookside Mall', 13003, null);
insert into polling_location values (13003003, 'Nashwaaksis Baptist Church', 13003, null);
insert into polling_location values (13003004, 'Loyalist Rugby Club', 13003, null);
insert into polling_location values (13003005, 'Johnston Ave Senior Center', 13003, null);
insert into polling_location values (13003006, 'Greenwood Drive Baptist Church', 13003, null);
insert into polling_location values (13003007, 'Four Lakes Senior Citizens Centre', 13003, null);
insert into polling_location values (13003008, 'Douglas Harbour Community Centre', 13003, null);
insert into polling_location values (13003009, 'Marysville Community Center', 13003, null);
insert into polling_location values (13003010, 'St. Mary''s Anglican Church', 13003, null);
insert into polling_location values (13003011, 'Nasis Kinsman Community Center', 13003, null);
insert into polling_location values (13003012, 'Maugerville Community Center', 13003, null);
insert into polling_location values (13003013, 'Corbett Avenue Wesleyan Church', 13003, null);
insert into polling_location values (13003014, 'Christ Church Parish', 13003, null);
insert into polling_location values (13003015, 'Fredericton Exhibition Centre', 13003, null);
insert into polling_location values (13003016, 'Journey Wesleyan Church', 13003, null);
insert into polling_location values (13003017, 'Sainte- Anne Community Centre', 13003, null);
insert into polling_location values (13003018, 'St. Peter''s Parish Hall', 13003, null);
insert into polling_location values (13003019, 'Lady Beaverbrook Rink', 13003, null);
insert into polling_location values (13003020, 'Wu Conference Center', 13003, null);
insert into polling_location values (13003021, 'Forest Hill United Church', 13003, null);
insert into polling_location values (13003022, 'Grant Harvey Center', 13003, null);
insert into polling_location values (13003023, 'St. John Paul II Parish', 13003, null);
insert into polling_location values (13003024, 'Lincoln Baptist Church', 13003, null);
insert into polling_location values (13003025, 'Burton Lion''s Club', 13003, null);
insert into polling_location values (13003026, 'Oromocto Community Center', 13003, null);
insert into polling_location values (13003027, 'Hazen Park Community Center', 13003, null);
insert into polling_location values (13003028, 'Oromocto Community Center', 13003, null);
insert into polling_location values (13003029, 'Geary Lion''s Club', 13003, null);
insert into polling_location values (13003030, 'Maqiyantimok Centre', 13003, null);
