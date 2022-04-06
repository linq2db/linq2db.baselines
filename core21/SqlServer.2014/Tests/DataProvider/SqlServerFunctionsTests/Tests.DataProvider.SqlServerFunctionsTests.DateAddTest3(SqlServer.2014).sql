BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:05:09.4750010 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

