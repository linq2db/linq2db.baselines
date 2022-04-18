BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 16:14:13.4053404 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

