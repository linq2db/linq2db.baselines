BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:15:36.6137781 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

