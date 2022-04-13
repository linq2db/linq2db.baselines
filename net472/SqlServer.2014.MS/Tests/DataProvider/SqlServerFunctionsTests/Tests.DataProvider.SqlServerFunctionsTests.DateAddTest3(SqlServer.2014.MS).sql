BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 01:55:56.1889080 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

