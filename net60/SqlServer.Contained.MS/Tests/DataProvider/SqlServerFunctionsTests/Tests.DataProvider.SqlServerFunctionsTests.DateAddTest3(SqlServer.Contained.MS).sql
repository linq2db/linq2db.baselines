BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 03:30:18.1977660 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

