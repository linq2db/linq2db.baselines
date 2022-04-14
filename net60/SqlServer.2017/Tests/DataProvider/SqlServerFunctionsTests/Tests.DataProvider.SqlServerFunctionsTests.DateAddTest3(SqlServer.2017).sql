BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 14:59:54.1320332 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

