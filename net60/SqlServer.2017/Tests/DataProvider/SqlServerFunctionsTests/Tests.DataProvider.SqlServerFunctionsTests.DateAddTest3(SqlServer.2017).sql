BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:32:41.7049557 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

