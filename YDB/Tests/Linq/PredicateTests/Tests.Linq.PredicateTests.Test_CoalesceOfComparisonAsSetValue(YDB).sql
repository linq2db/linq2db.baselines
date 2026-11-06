-- YDB Ydb
UPDATE
	NullableFlagTable
SET
	Flag = CASE
		WHEN NullableFlagTable.A = NullableFlagTable.B OR NullableFlagTable.A IS NULL AND NullableFlagTable.B IS NULL
			THEN true
		ELSE false
	END

-- YDB Ydb
SELECT
	r.Id as Id,
	r.Flag as Flag
FROM
	NullableFlagTable r
ORDER BY
	r.Id

