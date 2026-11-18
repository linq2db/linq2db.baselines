-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.A = r.B OR r.A IS NULL AND r.B IS NULL THEN true
		ELSE false
	END as c1
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

