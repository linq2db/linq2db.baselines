BeforeExecute
-- SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 04:24:31.2763888 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

