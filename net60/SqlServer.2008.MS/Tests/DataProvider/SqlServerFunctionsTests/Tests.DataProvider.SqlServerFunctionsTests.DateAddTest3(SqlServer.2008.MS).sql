BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:08:55.0148555 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

