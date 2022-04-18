BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:03:36.2010498 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

