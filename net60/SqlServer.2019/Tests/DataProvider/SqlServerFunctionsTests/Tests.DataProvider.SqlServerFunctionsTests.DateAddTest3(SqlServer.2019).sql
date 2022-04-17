BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 06:06:29.7841872 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

