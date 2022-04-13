BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:31:22.6452320 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

