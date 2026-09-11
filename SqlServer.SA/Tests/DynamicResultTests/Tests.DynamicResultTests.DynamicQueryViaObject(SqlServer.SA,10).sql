-- SqlServer.SA SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 10

select * from RawDynamicData where AId >= @param

