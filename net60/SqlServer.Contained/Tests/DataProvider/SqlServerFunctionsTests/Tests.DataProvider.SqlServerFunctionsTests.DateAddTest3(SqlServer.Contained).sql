BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:34:20.7922889 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

