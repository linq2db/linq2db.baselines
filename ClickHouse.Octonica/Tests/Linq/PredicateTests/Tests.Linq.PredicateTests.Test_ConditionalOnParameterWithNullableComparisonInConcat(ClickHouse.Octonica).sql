-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.Flag
FROM
	NullableFlagTable t1

