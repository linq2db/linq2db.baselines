BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:10:39.0066001 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

