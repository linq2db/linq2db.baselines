BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-15 17:09:06.3511575 +00:00'

SELECT
	DATEADD(Year, 1, @Now)

