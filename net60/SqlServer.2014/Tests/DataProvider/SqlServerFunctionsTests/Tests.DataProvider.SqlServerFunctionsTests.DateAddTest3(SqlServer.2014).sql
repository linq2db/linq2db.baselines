BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 22:17:46.1960678 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

