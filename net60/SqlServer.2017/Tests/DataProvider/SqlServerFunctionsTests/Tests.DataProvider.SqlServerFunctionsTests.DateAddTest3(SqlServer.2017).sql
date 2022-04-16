BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:10:38.9960428 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

