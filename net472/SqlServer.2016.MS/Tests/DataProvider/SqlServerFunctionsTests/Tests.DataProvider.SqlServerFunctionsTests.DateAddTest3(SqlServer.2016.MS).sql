BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:27:03.9134551 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

