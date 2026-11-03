-- DuckDB
UPDATE
	NullableFlagTable
SET
	Flag = NullableFlagTable.A = NullableFlagTable.B OR NullableFlagTable.A IS NULL AND NullableFlagTable.B IS NULL

-- DuckDB
SELECT
	r.Id,
	r.Flag
FROM
	NullableFlagTable r
ORDER BY
	r.Id

