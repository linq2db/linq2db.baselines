-- SQLite.MS SQLite
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	[ByteFieldUpdateTable]
SET
	[Field] = CAST(CAST([ByteFieldUpdateTable].[Field] AS INTEGER) + @offset AS TinyInt)

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[ByteFieldUpdateTable] [t1]
LIMIT 2

