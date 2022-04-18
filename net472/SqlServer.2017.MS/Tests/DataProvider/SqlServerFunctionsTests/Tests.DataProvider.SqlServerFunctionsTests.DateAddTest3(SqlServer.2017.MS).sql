BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:52:18.7050548 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

