BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-03 04:26:28.1417384 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

