BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-06 16:32:06.4116037 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

