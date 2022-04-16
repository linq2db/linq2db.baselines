BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:44:20.1654940 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

