BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 22:12:01.9452268 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

