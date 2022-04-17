BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:39:11.3361232 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

