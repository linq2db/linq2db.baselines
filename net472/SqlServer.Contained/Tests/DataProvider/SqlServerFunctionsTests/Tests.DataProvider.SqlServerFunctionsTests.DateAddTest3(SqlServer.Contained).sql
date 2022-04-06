BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 18:39:25.3462831 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

