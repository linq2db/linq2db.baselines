BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 03:58:12.7427028 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

