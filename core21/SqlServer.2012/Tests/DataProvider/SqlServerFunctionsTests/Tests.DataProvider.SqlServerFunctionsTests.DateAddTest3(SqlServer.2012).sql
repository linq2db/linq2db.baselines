BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-31 02:39:48.6930291 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

