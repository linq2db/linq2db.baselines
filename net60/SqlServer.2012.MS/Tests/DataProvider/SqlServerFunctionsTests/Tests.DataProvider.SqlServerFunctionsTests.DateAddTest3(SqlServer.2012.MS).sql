BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-17 05:47:09.4743005 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

