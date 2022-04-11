BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:53:21.4620588 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

