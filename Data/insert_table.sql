insert into Period (months_since_first,months_since_last)
select time,recency
from transfusion;

insert into Donation (number_of_donation,quantity_of_blood)
select frequency, monetary
from transfusion;

/*
insert into Donor (march_2007)
select t.march
from transfusion t;
*/

create sequence seq_fact start with 1;
create sequence seq_fact2 start with 1;

insert into Donor (period_id,donation_id,march_2007)
select seq_fact.nextval, seq_fact2.nextval, t.march
from transfusion t;
