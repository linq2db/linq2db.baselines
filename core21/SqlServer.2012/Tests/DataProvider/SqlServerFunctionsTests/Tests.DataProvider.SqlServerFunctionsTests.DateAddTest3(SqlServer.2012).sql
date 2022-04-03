BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:17:00.3869716 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

