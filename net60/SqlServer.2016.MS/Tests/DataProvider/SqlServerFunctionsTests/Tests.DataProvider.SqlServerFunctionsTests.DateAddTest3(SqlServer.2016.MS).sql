BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:43:13.0971851 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

