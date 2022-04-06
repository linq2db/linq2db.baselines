BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 17:01:36.0729030 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

