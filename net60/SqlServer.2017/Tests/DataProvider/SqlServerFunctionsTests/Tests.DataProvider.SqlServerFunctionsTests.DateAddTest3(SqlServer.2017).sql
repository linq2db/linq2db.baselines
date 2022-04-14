BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:23:16.1077904 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

