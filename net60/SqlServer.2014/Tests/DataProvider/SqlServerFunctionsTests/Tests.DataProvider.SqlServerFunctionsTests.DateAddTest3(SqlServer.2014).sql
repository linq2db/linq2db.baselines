BeforeExecute
-- SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:39:27.8252921 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

