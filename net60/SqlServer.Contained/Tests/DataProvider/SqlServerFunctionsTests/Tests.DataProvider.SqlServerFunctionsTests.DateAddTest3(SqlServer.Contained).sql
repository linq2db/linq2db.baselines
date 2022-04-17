BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:47:51.3981584 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

