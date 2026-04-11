-- SQLite.Classic SQLite
DECLARE @nullable  -- Int32
SET     @nullable = 1

SELECT
	[t].[Id],
	[t].[NullField]
FROM
	[TestTable] [t]
WHERE
	[t].[NullField] = @nullable

