BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:12:24.5266801 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

