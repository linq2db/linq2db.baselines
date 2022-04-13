BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 02:10:34.5641931 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

