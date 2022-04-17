BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:44:08.8859339 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

