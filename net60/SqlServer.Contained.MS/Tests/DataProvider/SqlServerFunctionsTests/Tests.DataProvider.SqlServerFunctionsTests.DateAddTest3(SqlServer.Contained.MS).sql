BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 22:10:42.3121270 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

