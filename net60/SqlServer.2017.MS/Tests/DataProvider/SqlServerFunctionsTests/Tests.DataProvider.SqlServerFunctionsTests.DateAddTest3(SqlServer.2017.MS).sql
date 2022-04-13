BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:41:00.0536689 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

