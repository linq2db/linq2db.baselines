BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:32:07.2475247 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

