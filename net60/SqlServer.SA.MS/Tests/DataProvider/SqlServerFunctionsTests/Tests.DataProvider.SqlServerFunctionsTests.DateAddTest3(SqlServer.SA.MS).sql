BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:22:18.3861691 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

