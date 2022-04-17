BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:50:09.3465284 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

