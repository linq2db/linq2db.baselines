-- SqlServer.CS SqlServer.2025
DECLARE @param Int -- Int32
SET     @param = 1

select * from RawDynamicData where AId >= @param

