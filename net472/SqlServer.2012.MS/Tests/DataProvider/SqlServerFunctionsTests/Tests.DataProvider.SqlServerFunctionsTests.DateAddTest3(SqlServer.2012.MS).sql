BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:59:10.2371247 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

