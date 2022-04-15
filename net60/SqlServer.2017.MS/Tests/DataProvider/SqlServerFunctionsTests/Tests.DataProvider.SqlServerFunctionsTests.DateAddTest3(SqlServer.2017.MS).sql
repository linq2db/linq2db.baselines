BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:43:50.9588370 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

