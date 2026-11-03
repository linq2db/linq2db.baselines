-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	CASE
		WHEN r.C IS NULL THEN r.Flag
		WHEN r.A = r.B OR r.A IS NULL AND r.B IS NULL THEN true
		ELSE false
	END
FROM
	NullableFlagTable r

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.Flag
FROM
	NullableFlagTable t1

