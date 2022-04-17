BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:54:54.7963327 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

