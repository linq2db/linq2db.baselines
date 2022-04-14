BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:32:39.2554832 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

