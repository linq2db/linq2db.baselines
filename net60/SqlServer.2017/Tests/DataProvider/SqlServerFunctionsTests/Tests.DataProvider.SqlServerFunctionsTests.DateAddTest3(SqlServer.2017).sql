BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:55:48.2681151 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

