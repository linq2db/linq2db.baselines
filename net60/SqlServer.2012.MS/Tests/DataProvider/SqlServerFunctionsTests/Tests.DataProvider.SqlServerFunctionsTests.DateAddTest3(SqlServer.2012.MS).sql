BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:23:22.3830574 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

