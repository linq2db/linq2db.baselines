BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:12:24.5175016 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

