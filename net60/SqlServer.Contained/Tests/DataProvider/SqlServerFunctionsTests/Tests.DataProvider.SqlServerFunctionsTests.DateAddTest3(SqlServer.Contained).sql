BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:56:32.9074583 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

