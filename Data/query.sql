select months_since_last, sum(quantity_of_blood)
from period, donor, donation
where donor.period_id=period.period_id and donation.donation_id=donor.donation_id
group by cube(months_since_last)
order by 2;

select pe.months_since_last, dona.number_of_donation, dono.march_2007
from period pe, donation dona, donor dono
where pe.period_id=dono.period_id and dono.donation_id=dona.donation_id
order by 2;