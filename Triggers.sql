					
						/* Triggers */

create trigger units_paid_change
before update on Consumption_Record
for each row
	set new.Non_paid=old.Non_paid-new.Paid+old.Paid,new.Non_paid=new.Units_Consumed*(select Average_rate
	from Rate
	where Rate.Region_id=old.Region_id and Rate.Month=old.Month)-new.Paid;


create trigger rate_change
after update on Rate
for each row
update Consumption_Record
set Consumption_Record.Paid=Consumption_Record.Paid*new.Average_rate/old.Average_rate,Consumption_Record.Non_paid=Consumption_Record.Non_paid*new.Average_rate/old.Average_rate;
