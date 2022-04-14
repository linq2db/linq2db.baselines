BeforeExecute
-- SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:09:41.1623747 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

