BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:41:18.9394213 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

