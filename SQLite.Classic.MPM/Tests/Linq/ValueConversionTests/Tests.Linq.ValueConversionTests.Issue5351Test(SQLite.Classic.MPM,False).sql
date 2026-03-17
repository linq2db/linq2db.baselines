-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 2

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = @Test

