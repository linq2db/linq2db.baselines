-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2026-06-01 09:00:00#

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	[r].[Value] = @value

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
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
			MAX([g_1].[Value]) = @value
	) [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @CoarseValue Date -- DateTime
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
			MAX([g_1].[Value]) = @CoarseValue
	) [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @day DBDate -- Date
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
			MIN([g_1].[Day]) = @day
	) [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @CoarseConvertedDay DBDate -- Date
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
			MIN([g_1].[Day]) = @CoarseConvertedDay
	) [t1]

