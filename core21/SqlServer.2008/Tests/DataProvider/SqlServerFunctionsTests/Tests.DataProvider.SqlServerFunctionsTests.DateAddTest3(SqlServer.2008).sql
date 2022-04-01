BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:26:18.3462033 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

