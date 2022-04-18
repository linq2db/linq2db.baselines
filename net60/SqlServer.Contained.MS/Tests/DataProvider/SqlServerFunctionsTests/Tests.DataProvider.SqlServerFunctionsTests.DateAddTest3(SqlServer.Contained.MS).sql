BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:59:02.3549485 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

