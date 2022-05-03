create table BusInformation (
BusID int Primary Key,
BoardingPoint nvarchar(100),
TravelDate datetime,
Amount decimal(10,2),
Rating int
)


Alter table BusInformation
add DroppingPoint nvarchar(100)


create procedure Insert_BusInformation (
	@BusID int,
	@BoardingPoint nvarchar(100), 
	@TravelDate datetime, 
	@Amount decimal(10,2), 
	@Rating int,
	@DroppingPoint nvarchar(100)
	)
as 
Begin 
  Insert into BusInformation values (@BusID, @BoardingPoint, @TravelDate, @Amount, @Rating, @DroppingPoint )
End


exec Insert_BusInformation
1,	'BGL',	'20170618',	400.65,	2, 'NGP'

exec Insert_BusInformation
2,	'HYD',	'20171005',	600.00,	3, 'MUM'

exec Insert_BusInformation
3,	'CHN',	'20160725',	445.95,	3, 'CNB'

exec Insert_BusInformation
4,	'PUN',	'20171210',	543.00,	4, 'NGP'

exec Insert_BusInformation
5,	'MUM',	'20170128',	500.50,	4, 'PUN'

exec Insert_BusInformation
6,	'PUN',	'20160327',	333.55,	3, 'LKO'

exec Insert_BusInformation
7,	'MUM',	'20161106',	510.00,	4, 'CHN'
 
 select * from BusInformation 