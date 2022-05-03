create database ADO_ASSIGNMENTS
create table FootballLeague(

MatchID int Primary key, 
TeamName1 nvarchar(100), 
TeamName2 nvarchar(100), 
MatchStatus nvarchar(100), 
WinningTeam nvarchar(100), 
Points int
);

select * from FootballLeague


create procedure insert_footballLeague 
	(@MatchId int, 
	@TeamName1 nvarchar(100),  
	@TeamName2 nvarchar(100), 
	@MatchStatus nvarchar(100),  
	@WinningTeam nvarchar(100), 
	@Points int )
as 
BEGIN
insert into FootballLeague values(@MatchId, @TeamName1, @TeamName2, @MatchStatus, @WinningTeam, @Points);
END

EXEC insert_footballLeague 
	@MatchId=1001, 
	@TeamName1= 'Italy',	
	@TeamName2= 'France',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'France',
	@Points =  4

EXEC insert_footballLeague 
	@MatchId=1002, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'Portugal',	
	@MatchStatus = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2

EXEC insert_footballLeague 
	@MatchId=1003, 
	@TeamName1= 'England',	
	@TeamName2= 'Japan',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'England',
	@Points =  4

EXEC insert_footballLeague 
	@MatchId=1004, 
	@TeamName1= 'USA',	
	@TeamName2= 'Russia',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4

EXEC insert_footballLeague 
	@MatchId=1005, 
	@TeamName1= 'Portugal',	
	@TeamName2= 'Italy',	
	@MatchStatus = 'Draw',	
	@WinningTeam = null,
	@Points =  2


EXEC insert_footballLeague 
	@MatchId=1006, 
	@TeamName1= 'Brazil',	
	@TeamName2= 'France',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Brazil',
	@Points =  4


EXEC insert_footballLeague 
	@MatchId=1007, 
	@TeamName1= 'England',	
	@TeamName2= 'Russia',	
	@MatchStatus = 'Win',	
	@WinningTeam = 'Russia',
	@Points =  4
	

EXEC insert_footballLeague 
	@MatchId=1008, 
	@TeamName1= 'Japan',	
	@TeamName2= 'USA',	
	@MatchStatus = 'Draw',	
	@WinningTeam = 'null',
	@Points =  2
