-- SqlServer.2022.MS SqlServer.2022
DECLARE @bound DateTime2
SET     @bound = DATETIME2FROMPARTS(1700, 1, 1, 0, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[DateBoundRow] [r]
WHERE
	CAST([r].[Value] AS Date) > @bound

