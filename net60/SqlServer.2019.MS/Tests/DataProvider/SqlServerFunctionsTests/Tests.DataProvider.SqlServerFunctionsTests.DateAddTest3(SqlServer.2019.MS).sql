BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 06:06:29.7953291 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

