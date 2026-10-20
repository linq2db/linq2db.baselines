-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T00:00:00.0000000' AS DATETIME2))

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T00:00:00.0000000' AS DATETIME2))

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST([r].[Value] AS Date) IN (CAST('2026-06-01T00:00:00.0000000' AS DATETIME2))

-- SqlServer.2008.MS SqlServer.2008
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN (CAST('2026-06-01T10:00:00.0000000' AS DATETIME2))

