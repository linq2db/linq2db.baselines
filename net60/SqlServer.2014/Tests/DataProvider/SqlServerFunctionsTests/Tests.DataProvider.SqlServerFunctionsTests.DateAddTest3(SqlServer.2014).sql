BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:23:48.3273012 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

