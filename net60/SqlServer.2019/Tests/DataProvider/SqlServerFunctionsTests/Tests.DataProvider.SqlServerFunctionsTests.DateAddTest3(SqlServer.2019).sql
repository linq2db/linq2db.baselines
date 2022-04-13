BeforeExecute
-- SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:37:41.3385959 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

