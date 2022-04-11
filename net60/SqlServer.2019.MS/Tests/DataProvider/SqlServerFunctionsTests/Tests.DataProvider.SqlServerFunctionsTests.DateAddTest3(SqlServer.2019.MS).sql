BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 08:17:02.1635528 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

