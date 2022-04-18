BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:56:27.4428061 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

