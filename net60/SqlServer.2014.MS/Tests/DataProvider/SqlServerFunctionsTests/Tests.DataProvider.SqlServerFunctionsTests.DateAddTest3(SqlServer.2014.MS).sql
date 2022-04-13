BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:32:04.2138159 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

