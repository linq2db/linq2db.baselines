-- YDB Ydb
SELECT
	r.Id as Id,
	CASE
		WHEN r.A = r.B OR r.A IS NULL AND r.B IS NULL THEN true
		ELSE false
	END as Value_1
FROM
	NullableFlagTable r
UNION ALL
SELECT
	r_1.Id + 1000 as Id,
	r_1.Flag as Value_1
FROM
	NullableFlagTable r_1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.Flag as Flag
FROM
	NullableFlagTable t1

