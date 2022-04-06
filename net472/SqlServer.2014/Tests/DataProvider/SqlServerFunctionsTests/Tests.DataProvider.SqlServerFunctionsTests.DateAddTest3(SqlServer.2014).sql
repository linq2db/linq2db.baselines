BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:41:49.0723666 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

