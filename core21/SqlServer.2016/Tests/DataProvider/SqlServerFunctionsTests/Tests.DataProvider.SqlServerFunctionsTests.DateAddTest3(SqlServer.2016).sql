BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:20:04.1718969 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

