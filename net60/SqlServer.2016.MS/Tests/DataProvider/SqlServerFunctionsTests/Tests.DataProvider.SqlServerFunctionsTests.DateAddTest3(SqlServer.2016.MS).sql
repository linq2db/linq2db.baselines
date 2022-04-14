BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:17.3721526 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

