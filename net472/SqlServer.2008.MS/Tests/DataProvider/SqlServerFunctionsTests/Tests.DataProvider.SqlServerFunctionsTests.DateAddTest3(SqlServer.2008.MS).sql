BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-16 21:57:19.7270968 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

