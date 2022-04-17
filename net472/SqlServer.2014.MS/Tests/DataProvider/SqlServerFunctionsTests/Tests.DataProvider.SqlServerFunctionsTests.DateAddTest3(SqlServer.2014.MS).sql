BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:11:29.1295218 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

