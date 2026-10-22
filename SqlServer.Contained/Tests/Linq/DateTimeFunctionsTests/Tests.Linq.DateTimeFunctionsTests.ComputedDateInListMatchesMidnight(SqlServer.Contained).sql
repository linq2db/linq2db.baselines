-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7))

-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7))

-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST([r].[Value] AS Date) IN (DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7))

-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7))

