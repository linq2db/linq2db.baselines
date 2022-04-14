BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 04:05:23.9591898 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

