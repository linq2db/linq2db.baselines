BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:53:21.2719339 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

