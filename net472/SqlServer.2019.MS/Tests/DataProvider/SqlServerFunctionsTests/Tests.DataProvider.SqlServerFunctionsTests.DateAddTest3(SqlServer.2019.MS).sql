BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:08:03.1871237 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

