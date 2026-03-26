-- SQLite.MS SQLite

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = NULL
WHERE
	[TableWithConverterValue].[Id] = 1

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = 'X'
WHERE
	[TableWithConverterValue].[Id] = 2

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 2
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = 'X'

