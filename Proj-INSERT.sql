

			/* 	Insert 	Queries */

insert into Electricity_Supply_Companies
values ('MESCOM', 'Mangalore Electricity Supply Company', 'MESCOM Bhavan, Kavoor Cross Road, Bejai, Mangalore, Karnataka 575004', 1234567890);

insert into Electricity_Supply_Companies
values ('HESCOM', 'Hubali Electricity Supply Company', 'Ganesh Path, Durgad Bail, New Hubli, Hubli, Karnataka 580028', '1234567892');

insert into Electricity_Supply_Companies
values ('GESCOM', 'Gulbarga Electricity Supply Company', 'Station Road, Gulbarga, Karnataka 585102', 1234567893);

insert into Electricity_Supply_Companies
values ('CESCOM', 'ChamundeshwariElectricitySupplyCorpor', 'No.29 \nVijayanagara 2nd stage\nHinkal\nMysore-570017', 1234567894);

insert into Electricity_Supply_Companies
values ('BESCOM', 'Bangalore Electricity Supply Company', 'Corporate Office\nBESCOM K.R.Circle\nBangalore-560001', 1234567891);




insert into Electricity_Supply_Branches
values ('shimoga','MESCOM','shimoga road',1234567895);

insert into Electricity_Supply_Branches
values ('hubballi','HESCOM','hubballi road',1234567898);

insert into Electricity_Supply_Branches
values ('belagavi', 'HESCOM', 'belagavi road', 1234567899);

insert into Electricity_Supply_Branches
values ('mangalore', 'MESCOM', 'mangalore road', 1234567896);

insert into Electricity_Supply_Branches
values ('udupi', 'MESCOM', 'udupi road', 1234567895);




insert into Region_Located
values (131,'sagard','MESCOM','shimoga');

insert into Region_Located
values (132,'shikaripurad','MESCOM','shimoga');

insert into Region_Located
values (221,'bagalkot','HESCOM','belagavi');

insert into Region_Located
values (221, 'belagavid', 'HESCOM', 'belagavi');

insert into Region_Located
values (212, 'sirsi', 'HESCOM', 'hubballi');

insert into Region_Located
values (211, 'haveri', 'HESCOM', 'hubballi');

insert into Region_Located
values (122, 'kundapurad', 'MESCOM', 'udupi');

insert into Region_Located
values (121, 'udupid', 'MESCOM', 'udupi');

insert into Region_Located
values (112, 'bantwald', 'MESCOM', 'mangalore');

insert into Region_Located
values (111, 'mangalored', 'MESCOM', 'mangalore');


insert into Electricity_Consumer
values (2211,1,221,'adarsha','ada_road',919876543218);

insert into Electricity_Consumer
values (2221,1,222,'kumara','kua_road',919876543219);

insert into Electricity_Consumer
values (2211, 1, 221, 'kumar', 'ku_road', 919876543219);

insert into Electricity_Consumer
values (2111, 1, 211, 'adarsh', 'ad_road', 919876543217);

insert into Electricity_Consumer
values (1312, 2, 131, 'nived', 'ni_road', 919876543213);

insert into Electricity_Consumer
values (1311, 1, 131, 'ravikiran', 'ki_road', 919876543212);

insert into Electricity_Consumer
values (1221, 1, 122, 'shreya', 'shr_road', 919876543216);

insert into Electricity_Consumer
values (1211, 1, 121, 'shreyas', 'sh_road', 919876543215);

insert into Electricity_Consumer
values (1121, 1, 112, 'suja', 'su_road', 919876543214);

insert into Electricity_Consumer
values (1112, 2, 111, 'avi', 'av_road', 919876543211);

insert into Electricity_Consumer
values (1111, 1, 111, 'ravi', 'ra_road', 919876543210);



insert into Consumption_Record
values ('feb',1312,131,0,0,0);

insert into Consumption_Record
values ('jan',1111,111,0,0,0);

insert into Consumption_Record
values ('jan',1121,112,0,0,0);

insert into Consumption_Record
values ('jan',1211,121,0,0,0);

insert into Consumption_Record
values ('jan',1312,131,0,0,0);

insert into Consumption_Record
values ('jan',1311,131,0,0,0);

insert into Consumption_Record
values ('feb',1311,131,0,0,0);



insert into Rate
values ('feb',222,3);

insert into Rate
values ('feb',212,5);

insert into Rate
values ('jan',111,5);

insert into Rate
values ('jan',112,3);

insert into Rate
values ('jan',121,6);

insert into Rate
values ('jan',122,7);

insert into Rate
values ('jan',131,4);

insert into Rate
values ('jan',132,4);

insert into Rate
values ('jan',211,6);

insert into Rate
values ('jan',212,5);

insert into Rate
values ('feb',132,4);

insert into Rate
values ('feb',211,6);

