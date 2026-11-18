-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nullable Integer -- Int32
SET     @nullable = 1

SELECT
	[t].[Id],
	[t].[NullField]
FROM
	[TestTable] [t]
WHERE
	[t].[NullField] = @nullable

