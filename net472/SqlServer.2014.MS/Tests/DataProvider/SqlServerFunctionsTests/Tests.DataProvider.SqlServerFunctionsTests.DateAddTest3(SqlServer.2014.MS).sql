BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:57:05.4424430 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

