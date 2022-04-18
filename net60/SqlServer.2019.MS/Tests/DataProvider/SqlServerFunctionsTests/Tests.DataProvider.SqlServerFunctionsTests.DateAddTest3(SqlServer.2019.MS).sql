BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 15:59:46.5078445 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

