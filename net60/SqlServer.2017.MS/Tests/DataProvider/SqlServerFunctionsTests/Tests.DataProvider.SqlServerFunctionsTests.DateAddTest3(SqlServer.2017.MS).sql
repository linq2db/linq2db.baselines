BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:55:20.3026570 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

