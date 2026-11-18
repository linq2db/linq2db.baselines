-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN ('2026-06-01 00:00:00.000')

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN ('2026-06-01 00:00:00.000')

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Cast(Floor(Cast([r].[Value] as Float)) as DateTime) IN ('2026-06-01 00:00:00.000')

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	Coalesce([r].[ClosedOn], [r].[OpenedOn]) IN ('2026-06-01 10:00:00.000')

