BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:17:24.1944893 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

