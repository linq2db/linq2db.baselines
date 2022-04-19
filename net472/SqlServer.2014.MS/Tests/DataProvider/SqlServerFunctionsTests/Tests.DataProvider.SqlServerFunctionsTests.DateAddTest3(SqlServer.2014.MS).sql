BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:26:34.4920623 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

