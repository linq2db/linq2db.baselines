BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:41:43.1471608 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

