BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 21:47:25.6249888 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

