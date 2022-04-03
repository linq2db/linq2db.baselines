BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:32:34.6148370 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

