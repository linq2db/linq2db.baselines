BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:47:02.9322989 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

