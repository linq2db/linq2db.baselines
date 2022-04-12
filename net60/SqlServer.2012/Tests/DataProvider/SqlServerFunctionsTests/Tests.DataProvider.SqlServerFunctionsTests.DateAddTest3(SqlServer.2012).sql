BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:23:22.3734078 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

