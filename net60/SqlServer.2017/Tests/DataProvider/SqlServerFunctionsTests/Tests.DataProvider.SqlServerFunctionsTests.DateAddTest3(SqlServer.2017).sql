BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:10:44.3070095 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

