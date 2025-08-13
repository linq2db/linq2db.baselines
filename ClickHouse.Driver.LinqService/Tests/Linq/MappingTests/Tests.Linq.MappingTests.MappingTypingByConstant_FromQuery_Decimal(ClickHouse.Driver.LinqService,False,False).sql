BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toDecimal128('1', 10) as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toDecimal128('2147483648.123', 10) as Value_1
		FROM
			Person r
	) t1

