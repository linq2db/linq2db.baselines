-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	1 = 0

-- SQLite.MS SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.MS SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp])

-- SQLite.MS SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.MS SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Stamp])

-- SQLite.MS SQLite
DECLARE @value Text(23) -- DateTime
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @value) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.MS SQLite
DECLARE @none Text -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	CAST(@none AS DateTime2) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.MS SQLite
DECLARE @some Text(23) -- DateTime
SET     @some = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', @some) < strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

-- SQLite.MS SQLite
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

