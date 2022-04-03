BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:13:55.8508395 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

