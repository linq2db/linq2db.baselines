BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:00:43.9157501 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

