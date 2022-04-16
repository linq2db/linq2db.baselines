BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:45:00.9125861 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

