use sales;
show tables;
select * from concerts;

select * from orchestra 
where city_origin != (
	select * from orchestra 
		where City_Origin in ("Owerri", "Asaba", "Umuahia"));

Select * from members;

select * from members 
where wage >= (
	select Wage, AVG(wage) AS Wage_AVERAGE 
		From Members
        GROUP BY Position
        ); 