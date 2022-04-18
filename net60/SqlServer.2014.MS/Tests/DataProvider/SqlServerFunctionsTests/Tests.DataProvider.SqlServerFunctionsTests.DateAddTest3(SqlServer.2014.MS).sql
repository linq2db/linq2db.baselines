BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:13:14.9091023 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

