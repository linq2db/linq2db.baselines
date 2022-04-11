BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:50:27.6421041 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

