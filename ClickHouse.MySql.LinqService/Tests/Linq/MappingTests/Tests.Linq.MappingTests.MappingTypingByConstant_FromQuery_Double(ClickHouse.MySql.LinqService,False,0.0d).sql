BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toFloat64(0) as Value_1
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
			toFloat64(3147483648) as Value_1
		FROM
			Person r
	) t1

