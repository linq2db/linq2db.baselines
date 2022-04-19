BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:39:52.9499077 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

