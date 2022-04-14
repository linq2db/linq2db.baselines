BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 01:48:59.3273919 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

