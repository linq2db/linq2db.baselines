BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 01:01:52.8886542 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

