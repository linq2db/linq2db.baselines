BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:32:41.3320392 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

