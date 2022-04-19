BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:39:52.9459575 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

