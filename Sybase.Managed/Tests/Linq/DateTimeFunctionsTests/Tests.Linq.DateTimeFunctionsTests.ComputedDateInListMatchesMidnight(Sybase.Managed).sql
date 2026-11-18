-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST(Coalesce([r].[ClosedOn], [r].[OpenedOn]) AS DateTime) IN ('2026-06-01 00:00:00.000')

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST(Coalesce([r].[ClosedOn], [r].[OpenedOn]) AS DateTime) IN ('2026-06-01 00:00:00.000')

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST(CAST([r].[Value] AS Date) AS DateTime) IN ('2026-06-01 00:00:00.000')

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CAST(Coalesce([r].[ClosedOn], [r].[OpenedOn]) AS DateTime) IN ('2026-06-01 10:00:00.000')

