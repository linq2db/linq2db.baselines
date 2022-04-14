BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:42:08.9760570 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

