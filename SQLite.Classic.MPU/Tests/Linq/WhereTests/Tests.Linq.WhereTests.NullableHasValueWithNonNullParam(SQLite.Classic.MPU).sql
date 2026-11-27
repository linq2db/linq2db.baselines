-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @nullable Integer -- Int32
SET     @nullable = 1

SELECT
	[t].[Id],
	[t].[NullField]
FROM
	[NullableHasValueTable] [t]
WHERE
	[t].[NullField] = @nullable

