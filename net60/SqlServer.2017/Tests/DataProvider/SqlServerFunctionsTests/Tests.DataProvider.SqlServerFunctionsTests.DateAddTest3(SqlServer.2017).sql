BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:12:28.8909222 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

