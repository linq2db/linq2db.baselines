BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:19:12.5453815 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

