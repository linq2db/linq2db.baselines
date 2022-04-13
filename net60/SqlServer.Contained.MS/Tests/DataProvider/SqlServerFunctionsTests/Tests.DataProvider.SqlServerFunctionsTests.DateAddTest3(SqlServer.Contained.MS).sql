BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:29:12.0355479 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

