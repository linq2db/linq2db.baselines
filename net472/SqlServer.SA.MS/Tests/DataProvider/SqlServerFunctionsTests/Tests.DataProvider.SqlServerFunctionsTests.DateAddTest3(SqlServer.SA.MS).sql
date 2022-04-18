BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:50:38.4485476 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

