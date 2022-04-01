BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:15:45.0869948 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

