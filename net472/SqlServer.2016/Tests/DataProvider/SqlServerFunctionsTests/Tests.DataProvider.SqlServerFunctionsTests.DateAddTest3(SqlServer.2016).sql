BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:17:43.4052830 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

