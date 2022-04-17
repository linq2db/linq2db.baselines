BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:59:36.9083977 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

