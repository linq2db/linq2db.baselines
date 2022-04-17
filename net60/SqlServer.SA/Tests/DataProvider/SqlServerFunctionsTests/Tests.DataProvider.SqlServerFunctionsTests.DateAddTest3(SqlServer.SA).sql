BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:02:32.4018482 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

