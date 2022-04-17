BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:47:51.4004493 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

