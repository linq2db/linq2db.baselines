BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 08:17:02.1709326 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

