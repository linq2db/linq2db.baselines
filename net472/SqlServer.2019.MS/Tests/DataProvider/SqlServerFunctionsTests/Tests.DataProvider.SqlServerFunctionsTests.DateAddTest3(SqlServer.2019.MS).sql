BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:26:49.6319383 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

