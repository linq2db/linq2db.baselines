BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 23:50:47.1600583 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

