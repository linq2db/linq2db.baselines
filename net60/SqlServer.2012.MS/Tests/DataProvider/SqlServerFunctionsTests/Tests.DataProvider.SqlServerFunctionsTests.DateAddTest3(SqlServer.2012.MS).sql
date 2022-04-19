BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:12:37.6313645 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

