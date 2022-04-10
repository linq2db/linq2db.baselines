BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:44:39.5704925 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

