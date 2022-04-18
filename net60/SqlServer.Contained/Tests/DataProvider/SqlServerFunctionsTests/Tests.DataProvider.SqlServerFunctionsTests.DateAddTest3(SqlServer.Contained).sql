BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 14:25:00.1119412 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

