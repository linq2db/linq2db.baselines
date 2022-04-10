BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:19:42.3764737 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

