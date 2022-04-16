BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:41:56.9118557 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

