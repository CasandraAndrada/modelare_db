select 2;
select 'text for select';
select 2+2;
select 3>4;
select NOW();
select * from autori;
select nume from autori;
select nume, carti_scrise from autori;
select id, nume, sex, carti_scrise from autori;
select *, id, nume, sex, carti_scrise from autori;
select *, * from autori;
select 'popescu v', 4;
select *, 4+5 from autori;
select nume, 3/5 from autori;
select nume, carti_scrise, 3%5 from autori;
select nume, carti_scrise > 5 from autori;
select nume, carti_scrise > 5 as "peste_5" from autori;
select nume, carti_scrise > 5 "peste_5" from autori;
select nume as "Nume", carti_scrise as "Carti scrise" from autori;
select * from autori as a;
select * from autori as "Autori";
select a.nume, a.sex from autori as a;
select * from adresa where id>4;
select * from adresa;
select * from adresa where autori_id=4;
select * from adresa where autori_id=4 and casa_bloc='b';
select * from adresa where casa_bloc='c';
select distinct nume from autori;
select nume, count(nume) from autori
group by nume;
