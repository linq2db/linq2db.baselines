-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.C IS NULL THEN r.Flag
		WHEN r.A IS NULL THEN true
		ELSE r.Flag
	END as Value_1
FROM
	NullableFlagTable r

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.Flag as Flag
FROM
	NullableFlagTable t1

