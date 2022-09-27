
								/* DML(data manipulation language) */
                                    
							
update Consumption_Record
set Units_Consumed=30					
where Con_id=1111 and Month='jan';			/* after updating this unit_paid_change will trigger and Paid will updated by trigger, because units_Consumed is increased*/
select*  from Consumption_Record;

update Consumption_Record
set Units_Consumed=21				
where Con_id=1121 and Month='jan';			

update Consumption_Record
set Units_Consumed=24				
where Con_id=1211 and Month='jan';

update Consumption_Record
set Units_Consumed=10			
where Con_id=1221 and Month='jan';

update Consumption_Record
set Units_Consumed=5		
where Con_id=1311 and Month='jan';

update Consumption_Record
set Units_Consumed=2		
where Con_id=1312 and Month='jan';

update Consumption_Record
set Units_Consumed=40			
where Con_id=2111 and Month='jan';

update Consumption_Record
set Units_Consumed=25			
where Con_id=2211 and Month='jan';

update Consumption_Record
set Units_Consumed=21				
where Con_id=1311 and Month='jan';

update Consumption_Record
set Units_Consumed=12				
where Con_id=1312 and Month='jan';

update Rate
set Average_rate=4						/* after updating this rate_change will trigger and Paid and Non_paid will update */
where Month='jan' and Region_id=111;
select* from Rate;

select* from Consumption_Record;

update Consumption_Record
set Paid=20				
where Con_id=1312 and Month='jan';

select* from Consumption_Record;

