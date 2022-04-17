BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 03:02:32.4082018 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

