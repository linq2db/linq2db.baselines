BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:33:33.9130550 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

