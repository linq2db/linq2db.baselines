BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 01:50:38.9206195 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

