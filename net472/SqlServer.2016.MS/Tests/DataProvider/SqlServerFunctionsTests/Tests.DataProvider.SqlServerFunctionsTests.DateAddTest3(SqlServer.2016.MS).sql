BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:12:05.1448939 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

