BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:30:02.6888493 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

