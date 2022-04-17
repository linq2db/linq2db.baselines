BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:02:29.9428989 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

