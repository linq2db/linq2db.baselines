BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 15:18:00.6532621 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

