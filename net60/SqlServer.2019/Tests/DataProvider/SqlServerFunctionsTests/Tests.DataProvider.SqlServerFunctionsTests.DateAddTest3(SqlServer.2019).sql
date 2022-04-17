BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.3753385 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

