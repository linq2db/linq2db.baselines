BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:02:29.2866147 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

