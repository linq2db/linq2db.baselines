BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:19:41.6268217 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

