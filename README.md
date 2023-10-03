Election Database Management System (EDMS) - CS1103 Course Project

This repository contains a database system developed as part of a course project, aimed at managing various aspects of the electoral process. The system consists of several tables and procedures:

Tables:
province_territory Table:
Manages information about provinces and territories, including unique IDs and names.

political_party Table:
Stores data related to political parties, including unique IDs and names.

electorial_district Table:
Represents electoral districts within provinces or territories, associated with unique IDs and names.

candidate Table:
Contains details about candidates, including names, associated districts, and political parties.

polling_location Table:
Stores information about polling locations, including names, associated districts, and rejected vote counts.

registered_voter Table:
Manages registered voter data, including personal details, addresses, and associated districts and polling locations.

vote_tally Table:
Records final vote counts for candidates in specific polling locations.

Procedures:
voteTotals(districtID int):
Retrieves total votes for candidates in a specific electoral district.

removeRejected(pollingLId int, candidateId int, quantityRejected int):
Removes rejected votes for a specific candidate in a particular polling location.

changeParty(candidateId int, newparty varchar(50)):
Changes the political party of a candidate within a specific district.

Course Project Information:
This project was developed as part of a course, demonstrating practical implementation of database management concepts in the context of an electoral system. It showcases the use of tables and procedures to handle various election-related tasks. Feel free to explore and use these components as a reference for similar projects.


