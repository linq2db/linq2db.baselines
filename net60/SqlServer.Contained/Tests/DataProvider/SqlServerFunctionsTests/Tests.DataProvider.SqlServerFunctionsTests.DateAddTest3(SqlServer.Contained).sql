BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:16:06.0503362 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

