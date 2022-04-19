BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:09:32.4055411 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

