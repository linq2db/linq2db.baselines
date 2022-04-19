BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:37:21.0083820 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

