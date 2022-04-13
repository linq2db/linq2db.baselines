BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:15:38.1997140 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

