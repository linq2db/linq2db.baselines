-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toUInt64(NULL) as Value_1
		FROM
			Person r
	) t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toUInt64(2147483648) as Value_1
		FROM
			Person r
	) t1

