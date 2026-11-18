-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	[r].[Value] = CAST([r].[OpenedOn] AS DateTime)

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	[r].[Value] IN (CAST([r].[OpenedOn] AS DateTime), CAST([r].[ClosedOn] AS DateTime))

