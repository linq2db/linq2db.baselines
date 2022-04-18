BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:16:21.5047848 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

