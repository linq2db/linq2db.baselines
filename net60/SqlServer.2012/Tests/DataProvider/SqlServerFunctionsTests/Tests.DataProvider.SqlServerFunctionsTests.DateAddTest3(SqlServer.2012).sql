BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:22:43.2068236 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

