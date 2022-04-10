BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:36:43.0088402 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

