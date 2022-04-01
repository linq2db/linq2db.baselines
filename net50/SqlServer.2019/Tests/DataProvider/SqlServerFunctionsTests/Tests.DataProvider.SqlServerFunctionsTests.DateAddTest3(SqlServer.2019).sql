BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:35:33.9174341 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

