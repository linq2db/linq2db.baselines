BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:48:39.5781549 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

