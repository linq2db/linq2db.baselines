BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:50:38.9256075 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

