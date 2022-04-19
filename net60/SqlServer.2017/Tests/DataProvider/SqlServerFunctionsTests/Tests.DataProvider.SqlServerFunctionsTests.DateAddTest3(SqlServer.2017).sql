BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:26:12.6441975 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

