BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 00:54:24.1771007 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

