BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			toUInt64(1) as Value_1
		FROM
			Person r
	) t1

BeforeExecute
-- ClickHouse.Client ClickHouse

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

