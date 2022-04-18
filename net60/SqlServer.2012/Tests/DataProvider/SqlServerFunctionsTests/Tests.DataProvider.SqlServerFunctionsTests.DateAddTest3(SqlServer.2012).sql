BeforeExecute
-- SqlServer.2012
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = '2020-02-29 17:54:55.1231234 +00:40'

SELECT
	DATEADD(Year, 1, @DateTimeOffset)

