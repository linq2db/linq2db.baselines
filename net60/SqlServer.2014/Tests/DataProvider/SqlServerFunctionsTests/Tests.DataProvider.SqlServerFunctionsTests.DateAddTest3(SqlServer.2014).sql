BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:17:18.3690089 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

