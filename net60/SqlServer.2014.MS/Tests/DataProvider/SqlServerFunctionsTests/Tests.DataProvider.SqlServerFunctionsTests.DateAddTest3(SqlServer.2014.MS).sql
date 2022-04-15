BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:18:42.8045444 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

