BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-19 04:32:43.9080175 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

