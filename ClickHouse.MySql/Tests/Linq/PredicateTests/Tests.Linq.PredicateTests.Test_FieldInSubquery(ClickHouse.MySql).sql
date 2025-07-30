BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value2 IN (
		SELECT
			r_1.Value1
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value2 IN (
		SELECT
			r_1.Value4
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value5 IN (
		SELECT
			r_1.Value1
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value5 IS NULL AND 1 IN (
		SELECT
			1
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value4 IS NULL
	) OR
	r.Value5 IS NOT NULL AND r.Value5 IN (
		SELECT
			r_2.Value4
		FROM
			BooleanTable r_2
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value2 NOT IN (
		SELECT
			r_1.Value1
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value2 NOT IN (
		SELECT
			r_1.Value4
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	r.Value5 IS NULL OR r.Value5 NOT IN (
		SELECT
			r_1.Value1
		FROM
			BooleanTable r_1
	)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	NOT (r.Value5 IS NULL AND 1 IN (
		SELECT
			1
		FROM
			BooleanTable r_1
		WHERE
			r_1.Value4 IS NULL
	) OR r.Value5 IS NOT NULL AND r.Value5 IN (
		SELECT
			r_2.Value4
		FROM
			BooleanTable r_2
	))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

