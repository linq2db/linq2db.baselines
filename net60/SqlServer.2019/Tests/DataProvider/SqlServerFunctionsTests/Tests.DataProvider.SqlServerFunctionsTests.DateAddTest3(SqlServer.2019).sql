BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:13:04.2024473 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

