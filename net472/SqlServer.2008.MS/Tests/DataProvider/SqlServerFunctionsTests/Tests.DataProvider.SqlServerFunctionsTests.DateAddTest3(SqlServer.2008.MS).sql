BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:25:45.3912185 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

