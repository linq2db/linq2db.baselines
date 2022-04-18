BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 13:24:32.0029517 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

