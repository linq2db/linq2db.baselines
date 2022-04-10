BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-10 23:26:25.7111375 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

