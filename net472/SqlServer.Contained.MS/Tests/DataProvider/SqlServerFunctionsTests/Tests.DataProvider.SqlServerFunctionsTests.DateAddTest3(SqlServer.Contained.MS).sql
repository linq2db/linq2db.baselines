BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:30:55.0567982 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

