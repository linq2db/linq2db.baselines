BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:26:48.1796959 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

