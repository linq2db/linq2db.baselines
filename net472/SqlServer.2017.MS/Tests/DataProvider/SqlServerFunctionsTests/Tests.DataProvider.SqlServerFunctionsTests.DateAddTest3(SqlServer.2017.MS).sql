BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:01:28.3782010 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

