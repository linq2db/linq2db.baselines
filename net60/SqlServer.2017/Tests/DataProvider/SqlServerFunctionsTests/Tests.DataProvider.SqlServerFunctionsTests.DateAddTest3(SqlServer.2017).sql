BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:39:16.1267053 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

