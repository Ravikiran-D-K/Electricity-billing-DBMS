			/* 	Simple queries */
/* Extracting Branch Name in ascending order along with Company Name */

select b.Name,a.Short_Form
from electricity_supply_companies a,electricity_supply_branches b
where a.Short_Form=b.C_Short_Form
order by Name;

/* Extracting Region Name which are ending with ‘d’ */

select a.Region_name
from Region_Located a
where Region_name like '%d'
order by Region_name;

/* Extracting all consumers Name ,their region and rate of those regions in the month of JAN in ascending order of consumers name. */

select b.Con_Name,a.Region_name,c.Month,c.Average_rate
from Region_Located a,electricity_consumer b,Rate c
where a.Region_id=b.Region_id and b.Region_id=c.Region_id and c.Month='jan'
order by Con_Name ;



				/* Complex Queries

Extracting consumer who has units_consumed>20 and belonging to MESCOM */

select Con_id ,Con_Name ,Con_meter_no,Region_id
from Electricity_Consumer
where Con_id in(
select Con_id
from Consumption_Record
inner join region_located on
Consumption_Record.Region_id=region_located.Region_id
where Units_Consumed>20 and region_located.Region_id in (
select Region_id
from region_located
where region_located.C_Short_Form='MESCOM'));

/* Finding companies which have particular  name in  their database */

select Short_Form,Name,Mobile_no
from electricity_supply_companies
where Short_Form in(
select electricity_supply_branches.C_Short_Form
from electricity_supply_branches
inner join region_located on
electricity_supply_branches.Name=region_located.BName
where region_located.BName in (
select BName
from region_located
inner join electricity_consumer on
electricity_consumer.Region_id=region_located.Region_id
where electricity_consumer.Region_id in(
select  electricity_consumer.Region_id
from electricity_consumer
where Con_Name='ravi')));

/* Extracting Consumers and their regions who are paying particular rate */

select Con_id ,Con_Name ,Con_meter_no,Region_id
from Electricity_Consumer
where Con_id in(
select Con_id
from Consumption_Record
inner join region_located on
Consumption_Record.Region_id=region_located.Region_id
where region_located.Region_id  in (
select region_located.Region_id
from region_located
inner join Rate on
region_located.Region_id=Rate.Region_id
where Rate.Region_id in (
select Rate.Region_id
from Rate
where Average_rate=6)));

	/* Extract total units consumed by each Company */
    
select sum(Units_Consumed),region_located.C_Short_Form
from consumption_record,region_located
where consumption_record.Region_id=region_located.Region_id
 group by C_Short_Form;
 
 	/* Extract total units consumed by each Region */
 select consumption_record.Region_id,sum(Units_Consumed)
from consumption_record,region_located
where consumption_record.Region_id=region_located.Region_id
 group by Region_id
