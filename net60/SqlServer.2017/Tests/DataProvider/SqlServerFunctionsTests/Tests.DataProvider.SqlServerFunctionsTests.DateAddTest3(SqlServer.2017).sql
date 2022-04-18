BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 13:22:11.8307945 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

