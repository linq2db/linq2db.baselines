-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @offset  -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS INTEGER) + @offset AS TinyInt)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]
LIMIT 2

