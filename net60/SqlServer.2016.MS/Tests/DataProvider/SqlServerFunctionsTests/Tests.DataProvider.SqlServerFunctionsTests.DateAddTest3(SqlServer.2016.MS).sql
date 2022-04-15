BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:40:00.6923063 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

