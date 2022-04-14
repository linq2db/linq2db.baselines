BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 21:57:59.1524667 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

