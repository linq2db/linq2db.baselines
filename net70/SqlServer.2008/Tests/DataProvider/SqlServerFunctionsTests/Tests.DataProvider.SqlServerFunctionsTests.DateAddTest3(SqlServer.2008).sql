BeforeExecute
-- SqlServer.2008
DECLARE @DateTimeOffset DateTimeOffset
SET     @DateTimeOffset = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

SELECT
	DATEADD(Year, 1, @DateTimeOffset)

