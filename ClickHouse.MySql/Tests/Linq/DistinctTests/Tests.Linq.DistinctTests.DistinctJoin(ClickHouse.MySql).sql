BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.ID,
	p.SmallIntValue
FROM
	(
		SELECT DISTINCT
			_.ID as ID,
			_.SmallIntValue as SmallIntValue
		FROM
			LinqDataTypes _
	) e
		LEFT JOIN (
			SELECT DISTINCT
				_1.ID as ID,
				_1.SmallIntValue as SmallIntValue
			FROM
				LinqDataTypes _1
		) p ON p.ID = e.ID

