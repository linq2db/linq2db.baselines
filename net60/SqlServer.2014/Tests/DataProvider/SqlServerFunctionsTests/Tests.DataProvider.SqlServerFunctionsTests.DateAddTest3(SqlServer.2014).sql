BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:06:31.8915845 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

