BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:26:59.4713910 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

