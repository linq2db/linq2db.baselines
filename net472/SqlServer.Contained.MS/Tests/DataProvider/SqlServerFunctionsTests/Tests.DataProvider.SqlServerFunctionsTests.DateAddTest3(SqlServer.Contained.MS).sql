BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 06:07:40.5541915 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

