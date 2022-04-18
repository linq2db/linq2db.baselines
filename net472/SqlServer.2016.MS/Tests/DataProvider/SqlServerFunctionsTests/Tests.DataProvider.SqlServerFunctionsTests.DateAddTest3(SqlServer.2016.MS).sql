BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:25:36.0134093 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

