BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:18:55.7043818 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

