BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:18:56.0706117 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

