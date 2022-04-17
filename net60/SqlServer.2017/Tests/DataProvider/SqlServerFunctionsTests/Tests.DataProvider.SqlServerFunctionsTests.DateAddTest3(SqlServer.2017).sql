BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:05:15.7205997 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

