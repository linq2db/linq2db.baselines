-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T00:00:00.000' AS DATETIME))

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T00:00:00.000' AS DATETIME))

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [r].[Value]), 0) IN (CAST('2026-06-01T00:00:00.000' AS DATETIME))

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T10:00:00.000' AS DATETIME))

