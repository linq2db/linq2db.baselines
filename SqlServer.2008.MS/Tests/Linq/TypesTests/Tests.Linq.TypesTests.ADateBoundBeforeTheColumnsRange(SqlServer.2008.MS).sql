-- SqlServer.2008.MS SqlServer.2008
DECLARE @bound DateTime2
SET     @bound = CAST('1700-01-01T00:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[DateBoundRow] [r]
WHERE
	CAST([r].[Value] AS Date) > @bound

