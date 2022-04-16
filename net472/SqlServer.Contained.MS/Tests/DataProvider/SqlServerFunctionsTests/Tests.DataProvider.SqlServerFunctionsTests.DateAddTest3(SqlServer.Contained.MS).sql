BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:14:23.8237514 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

