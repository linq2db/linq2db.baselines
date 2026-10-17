-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]

-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2026-06-01 09:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	[r].[Value] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2026-06-01 09:00:00#

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) = ?
	) [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @CoarseValue DateTime
SET     @CoarseValue = #2026-06-01 09:00:00#

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) = ?
	) [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @day Date
SET     @day = #2026-05-31#

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MIN([g_1].[Day]) = ?
	) [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = #2026-05-31#

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MIN([g_1].[Day]) = ?
	) [t1]

