BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toFloat32(0) as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toFloat32(3.14748365E+09) as Value_1
		FROM
			Person r
	) t1

