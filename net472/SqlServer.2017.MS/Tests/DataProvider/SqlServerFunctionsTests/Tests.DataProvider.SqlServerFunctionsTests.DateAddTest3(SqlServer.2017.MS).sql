BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:27:07.1276255 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

