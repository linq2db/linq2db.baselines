BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:44:04.1404300 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

