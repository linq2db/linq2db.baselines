-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS INTEGER) + -1 AS TinyInt)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]
LIMIT 2

