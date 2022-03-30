BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-30 00:53:37.0086799 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

