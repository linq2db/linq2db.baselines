BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-03-27 19:08:32.4047390 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

