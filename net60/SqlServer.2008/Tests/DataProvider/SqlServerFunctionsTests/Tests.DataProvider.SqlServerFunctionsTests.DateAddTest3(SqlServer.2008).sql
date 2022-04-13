BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:13:19.6329842 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

