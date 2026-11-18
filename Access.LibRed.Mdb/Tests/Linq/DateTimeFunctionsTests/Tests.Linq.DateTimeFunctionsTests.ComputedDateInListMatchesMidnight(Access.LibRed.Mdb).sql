-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOn] IS NULL THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END IN (#2026-06-01#)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOn] IS NULL THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END IN (#2026-06-01#)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	DateValue([r].[Value]) IN (#2026-06-01#)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOn] IS NULL THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END IN (#2026-06-01 10:00:00#)

