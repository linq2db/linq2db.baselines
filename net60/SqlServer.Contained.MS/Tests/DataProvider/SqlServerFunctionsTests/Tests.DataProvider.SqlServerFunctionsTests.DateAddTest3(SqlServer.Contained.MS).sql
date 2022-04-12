BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:32:58.5834270 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

