BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:23:44.6727361 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

