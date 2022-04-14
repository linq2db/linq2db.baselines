BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 03:39:43.8132127 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

