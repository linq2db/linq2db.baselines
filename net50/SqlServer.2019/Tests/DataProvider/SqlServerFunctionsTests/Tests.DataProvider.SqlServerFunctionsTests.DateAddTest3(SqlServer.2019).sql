BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:18:42.0569530 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

