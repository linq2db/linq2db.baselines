BeforeExecute
-- SQLite.MS SQLite (asynchronously)

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS INTEGER) + -1 AS TinyInt)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]
LIMIT 2

