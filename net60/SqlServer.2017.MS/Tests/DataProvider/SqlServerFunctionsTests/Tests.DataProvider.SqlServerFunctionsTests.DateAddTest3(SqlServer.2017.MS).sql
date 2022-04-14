BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:00:14.6278881 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

