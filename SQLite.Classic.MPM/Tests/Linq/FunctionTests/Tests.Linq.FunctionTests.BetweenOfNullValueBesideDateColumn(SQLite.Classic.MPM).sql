-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	1 = 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value VarChar(23) -- AnsiString
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @value) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @some VarChar(23) -- AnsiString
SET     @some = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @some) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	CASE
		WHEN CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])
			THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

