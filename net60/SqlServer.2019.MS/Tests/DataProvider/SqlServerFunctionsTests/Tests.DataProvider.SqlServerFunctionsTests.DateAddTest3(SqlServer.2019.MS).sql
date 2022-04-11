BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:17:36.4577898 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

