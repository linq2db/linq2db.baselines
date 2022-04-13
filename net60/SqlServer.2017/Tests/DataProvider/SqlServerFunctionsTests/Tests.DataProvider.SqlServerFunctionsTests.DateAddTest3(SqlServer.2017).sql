BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:07:12.4361247 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

