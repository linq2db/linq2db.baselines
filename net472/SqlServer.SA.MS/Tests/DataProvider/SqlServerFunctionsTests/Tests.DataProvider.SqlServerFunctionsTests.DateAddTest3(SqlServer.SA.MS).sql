BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:20:51.7357501 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

