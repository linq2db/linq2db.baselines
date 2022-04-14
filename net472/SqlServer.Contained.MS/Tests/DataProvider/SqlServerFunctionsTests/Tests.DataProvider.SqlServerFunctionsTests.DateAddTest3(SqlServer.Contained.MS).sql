BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:46:31.7662468 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

