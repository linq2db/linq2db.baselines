-- SQLite.Classic SQLite

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS INTEGER) + -1 AS TinyInt)

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]
LIMIT 2

