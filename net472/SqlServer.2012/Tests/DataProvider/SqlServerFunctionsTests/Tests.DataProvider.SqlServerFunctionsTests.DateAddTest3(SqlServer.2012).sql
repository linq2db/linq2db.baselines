BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-01 19:14:47.2723725 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

