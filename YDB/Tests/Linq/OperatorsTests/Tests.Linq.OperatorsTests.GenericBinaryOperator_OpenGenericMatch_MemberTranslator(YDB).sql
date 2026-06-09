-- YDB Ydb

SELECT
	r.Id as Id,
	r.IntHolder as IntHolder,
	r.LongHolder as LongHolder
FROM
	HolderTable r
WHERE
	r.IntHolder + 3 = 5 AND r.LongHolder + 3 = 5

