BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-14 02:02:50.1136854 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

