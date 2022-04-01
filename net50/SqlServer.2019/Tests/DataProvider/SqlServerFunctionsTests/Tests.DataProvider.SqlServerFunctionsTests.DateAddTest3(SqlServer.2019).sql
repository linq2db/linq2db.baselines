BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:54:35.4029008 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

