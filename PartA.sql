--Part A---------------------------------------------------------------------

drop procedure if exists voteTotals;
delimiter $$
create procedure voteTotals(districtID int)
begin
if ( exists (select 1 from electorial_district
where district_id = districtID)) then
select surname, given_names,party_name, 
sum(final_count) as Total_Votes
from candidate natural join political_party 
natural join vote_tally 
where district_id = districtID
group by candidate_id
order by Total_votes desc;
else
signal sqlstate '45001'
set message_text = 'Invalid input';
end if;
end$$

delimiter ;

--part B----------------------
drop procedure if exists removeRejected;
delimiter $$
create procedure removeRejected(pollingLId int, candidateId int, quantityRejected int)
begin
declare oldCount   int;
if (exists  (select 1 from vote_tally 
where location_id = pollingLId 
and candidate_id = candidateId
and quantityRejected between 1 and final_count)) then

    select final_count  
    into oldCount
    from vote_tally
    where location_id = pollingLId  
    and candidate_id = candidateId;   
                              
    update vote_tally     
    set final_count = oldCount - quantityRejected
    where location_id = pollingLId
    and candidate_id = candidateId;       
              
    select rejected_count  
    into oldCount
    from polling_location
    where location_id = pollingLId;
                  
    if (oldCount is null) then
        update polling_location 
        set rejected_count = quantityRejected
        where location_id = pollingLId;
    else 
        update polling_location 
        set rejected_count = oldCount + quantityRejected
        where location_id = pollingLId;
    end if;               
                            
             
else
    signal sqlstate '45001'
    set message_text = 'invalid input';
end if;

end $$
delimiter ; 

---Test 1---

 select location_id,candidate_id,rejected_count,final_count
     from vote_tally natural join polling_location
     where candidate_id = 7398
     and location_id = 13003002;

call removeRejected(13003002,7398,20);

--Test 2-----Invalid location_id
call removeRejected(13,7398,20);

--Test 3-----Invalid candidate_id
call removeRejected(13003002,70,20);


--Setting the table to DEFAULT

UPDATE vote_tally
SET final_count = 
WHERE location_id = 1 AND candidate_id = 1; 

-- Roll back changes made to polling_location table
UPDATE polling_location
SET rejected_count is null-- assuming original rejected count value was 0
WHERE location_id = 1; -- assuming value used for testing

---------------------------------------------------------------------------------           
    insert into candidate values(7500,13009,1001,'Tuivasa','Justin');
--test 4----------------
call removeRejected(13003001,7500,20);

--test--Update reversal--
update polling_location
set rejected_count = null 
where location_id = 13003002;

update vote_tally
set final_count = 535
where location_id = 13003001
and candidate_id = 7397;

update vote_tally
set final_count = 519
where location_id = 13003002
and candidate_id = 7398;

--part C------------------------------------------------------------------------
drop procedure if exists changeParty;
delimiter $$
create procedure changeParty(candidateId int, newparty varchar(50))
begin 
declare districtId int;
select district_id into districtId
from candidate
where candidate_id = candidateId;
if not exists(select * from
candidate 
where candidate_id = candidateId) then
signal sqlstate '45001'
set message_text = 'invalid input';
end if;
if not exists(select * from
political_party 
where party_name = newparty) then
signal sqlstate '45001'
set message_text = 'invalid input';
end if;
if exists(select * from candidate natural join political_party
where district_id = districtId and party_name = newparty ) then
signal sqlstate '45001'
set message_text = 'invalid input';
else 
update
candidate natural join political_party
set party_name= newparty
where candidate_id = candidateId;
end if;
end $$
delimiter ; 

--test 1---------------
select * from candidate natural join political_party
where candidate_id = 7403;
--invalid candidate_id
call changeParty(74,'Green Party');
--invalid party_name
call changeParty(7403,'Druk Nyamrup Tshogpa');

call changeParty(7403,'Independent');

--  candidate in the same district is already in the given party---
call changeParty(7403,'NDP');
