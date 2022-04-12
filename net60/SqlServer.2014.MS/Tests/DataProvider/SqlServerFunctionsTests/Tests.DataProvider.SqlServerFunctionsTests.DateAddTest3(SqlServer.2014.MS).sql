BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:17:46.2057530 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

