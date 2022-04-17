BeforeExecute
-- SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 02:54:54.2977784 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

