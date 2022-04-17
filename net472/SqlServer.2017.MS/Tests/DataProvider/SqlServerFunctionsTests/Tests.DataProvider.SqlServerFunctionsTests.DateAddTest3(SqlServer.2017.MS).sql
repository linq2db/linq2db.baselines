BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:52:24.0124526 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

