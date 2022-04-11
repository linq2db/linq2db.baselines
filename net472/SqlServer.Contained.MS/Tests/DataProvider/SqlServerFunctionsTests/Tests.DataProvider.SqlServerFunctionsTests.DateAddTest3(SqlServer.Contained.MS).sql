BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:03:22.0146698 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

