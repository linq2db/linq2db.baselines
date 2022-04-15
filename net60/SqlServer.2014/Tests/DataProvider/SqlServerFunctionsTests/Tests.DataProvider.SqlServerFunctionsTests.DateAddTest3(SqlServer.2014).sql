BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:18:42.7919472 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

