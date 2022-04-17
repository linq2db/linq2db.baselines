BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:34:20.7893260 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

