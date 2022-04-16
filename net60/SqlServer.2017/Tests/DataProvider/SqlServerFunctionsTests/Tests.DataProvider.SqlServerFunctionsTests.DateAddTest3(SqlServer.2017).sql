BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 13:43:54.7339668 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

