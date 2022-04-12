BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:08:29.1496295 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

