BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 03:50:27.6372853 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

