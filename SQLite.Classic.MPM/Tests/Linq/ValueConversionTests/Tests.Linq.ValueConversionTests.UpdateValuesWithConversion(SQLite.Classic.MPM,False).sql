-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test1 Char -- AnsiStringFixedLength
SET     @Test1 = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
WHERE
	[TableWithConverterValue].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = @Test1
WHERE
	[TableWithConverterValue].[Id] = 2

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test1 Char(1) -- AnsiStringFixedLength
SET     @Test1 = 'X'

SELECT
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Test1] = @Test1

