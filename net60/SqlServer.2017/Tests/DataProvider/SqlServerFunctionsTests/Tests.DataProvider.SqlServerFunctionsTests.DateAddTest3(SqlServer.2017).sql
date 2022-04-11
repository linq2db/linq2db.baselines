BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:22:38.8203319 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

