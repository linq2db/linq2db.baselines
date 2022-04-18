BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 06:45:23.6737673 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

