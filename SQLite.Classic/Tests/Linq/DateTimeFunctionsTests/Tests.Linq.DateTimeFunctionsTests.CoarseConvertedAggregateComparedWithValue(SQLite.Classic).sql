-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @value VarChar(23) -- AnsiString
SET     @value = '2026-06-01 09:00:00.000'

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) = strftime('%Y-%m-%d %H:%M:%f', @value)

-- SQLite.Classic SQLite
DECLARE @value VarChar(23) -- AnsiString
SET     @value = '2026-06-01 09:00:00.000'

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
			strftime('%Y-%m-%d %H:%M:%f', MAX([g_1].[Value])) = strftime('%Y-%m-%d %H:%M:%f', @value)
	) [t1]

-- SQLite.Classic SQLite
DECLARE @CoarseValue VarChar(23) -- AnsiString
SET     @CoarseValue = '2026-06-01 09:00:00.000'

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
			strftime('%Y-%m-%d %H:%M:%f', MAX([g_1].[Value])) = strftime('%Y-%m-%d %H:%M:%f', @CoarseValue)
	) [t1]

-- SQLite.Classic SQLite
DECLARE @day VarChar(23) -- AnsiString
SET     @day = '2026-05-31 00:00:00.000'

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
			Date(MIN([g_1].[Day])) = Date(@day)
	) [t1]

-- SQLite.Classic SQLite
DECLARE @CoarseConvertedDay VarChar(23) -- AnsiString
SET     @CoarseConvertedDay = '2026-05-31 00:00:00.000'

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
			Date(MIN([g_1].[Day])) = Date(@CoarseConvertedDay)
	) [t1]

