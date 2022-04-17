BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:39:11.5459363 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

