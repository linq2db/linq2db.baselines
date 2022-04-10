BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:32:31.3998047 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

