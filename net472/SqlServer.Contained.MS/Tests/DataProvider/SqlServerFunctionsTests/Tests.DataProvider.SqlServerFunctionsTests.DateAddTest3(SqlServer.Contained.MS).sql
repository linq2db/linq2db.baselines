BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 15:45:34.3147936 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

