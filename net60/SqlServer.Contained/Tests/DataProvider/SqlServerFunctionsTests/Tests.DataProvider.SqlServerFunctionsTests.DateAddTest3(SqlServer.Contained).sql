BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:30:23.4378625 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

