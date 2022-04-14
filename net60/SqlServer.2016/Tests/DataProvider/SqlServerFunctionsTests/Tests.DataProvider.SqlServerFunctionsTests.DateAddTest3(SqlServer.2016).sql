BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:29:26.7925272 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

