BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:59:46.4989461 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

