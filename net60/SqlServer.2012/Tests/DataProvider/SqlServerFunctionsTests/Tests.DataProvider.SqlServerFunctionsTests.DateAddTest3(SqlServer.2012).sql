BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:26:31.7700753 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

