BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:00:22.4098099 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

