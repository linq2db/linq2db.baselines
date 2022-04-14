BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:57:09.1365255 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

