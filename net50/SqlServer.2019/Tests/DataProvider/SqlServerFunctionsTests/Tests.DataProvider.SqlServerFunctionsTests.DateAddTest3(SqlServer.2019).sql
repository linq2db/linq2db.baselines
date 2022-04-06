BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:46:58.3348987 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

