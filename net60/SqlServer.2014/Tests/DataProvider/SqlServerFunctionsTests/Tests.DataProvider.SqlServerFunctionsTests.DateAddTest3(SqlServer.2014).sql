BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:39:31.7394140 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

