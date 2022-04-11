BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:43:50.9154716 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

