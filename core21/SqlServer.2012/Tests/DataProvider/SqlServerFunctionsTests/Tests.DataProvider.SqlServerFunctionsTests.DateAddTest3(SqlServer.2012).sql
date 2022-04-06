BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:08:01.5927992 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

