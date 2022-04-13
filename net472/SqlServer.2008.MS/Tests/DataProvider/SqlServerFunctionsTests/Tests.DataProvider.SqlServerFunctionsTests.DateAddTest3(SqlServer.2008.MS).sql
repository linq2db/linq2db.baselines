BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 01:52:33.8073037 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

