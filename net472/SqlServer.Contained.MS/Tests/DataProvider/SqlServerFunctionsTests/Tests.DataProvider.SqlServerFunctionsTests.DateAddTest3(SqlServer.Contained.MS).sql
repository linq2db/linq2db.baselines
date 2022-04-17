BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:26:03.4651354 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

