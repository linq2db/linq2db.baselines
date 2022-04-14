BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:57:09.1351112 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

