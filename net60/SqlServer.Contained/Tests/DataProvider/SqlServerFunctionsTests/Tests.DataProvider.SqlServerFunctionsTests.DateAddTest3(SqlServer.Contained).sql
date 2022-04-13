BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:21:56.3083100 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

