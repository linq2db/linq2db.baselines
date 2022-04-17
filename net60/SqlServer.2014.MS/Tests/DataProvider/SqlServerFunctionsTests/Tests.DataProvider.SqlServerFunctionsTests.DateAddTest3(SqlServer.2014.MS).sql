BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:19:32.7123977 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

