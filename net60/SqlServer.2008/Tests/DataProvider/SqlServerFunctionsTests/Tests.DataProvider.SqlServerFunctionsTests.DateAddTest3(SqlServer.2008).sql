BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 01:57:40.1996914 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

