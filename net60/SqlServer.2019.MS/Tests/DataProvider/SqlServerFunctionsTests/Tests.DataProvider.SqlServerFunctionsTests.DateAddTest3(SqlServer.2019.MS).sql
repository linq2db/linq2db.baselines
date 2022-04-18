BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-18 07:55:06.2611869 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

