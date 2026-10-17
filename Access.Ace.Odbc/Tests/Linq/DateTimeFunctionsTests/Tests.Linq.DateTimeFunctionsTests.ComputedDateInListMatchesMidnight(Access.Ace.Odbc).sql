-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN (#2026-06-01#)

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN (#2026-06-01#)

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	DateValue([r].[Value]) IN (#2026-06-01#)

-- Access.Ace.Odbc AccessODBC
SELECT
	COUNT(*)
FROM
	[CoarseDayPairRow] [r]
WHERE
	IIF([r].[ClosedOn] IS NULL, [r].[OpenedOn], [r].[ClosedOn]) IN (#2026-06-01 10:00:00#)

