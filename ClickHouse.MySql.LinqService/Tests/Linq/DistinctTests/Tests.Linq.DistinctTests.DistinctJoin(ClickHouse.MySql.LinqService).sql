BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	e.ID,
	p.SmallIntValue
FROM
	(
		SELECT DISTINCT
			t1.ID as ID,
			t1.SmallIntValue as SmallIntValue
		FROM
			LinqDataTypes t1
	) e
		LEFT JOIN (
			SELECT DISTINCT
				t2.ID as ID,
				t2.SmallIntValue as SmallIntValue
			FROM
				LinqDataTypes t2
		) p ON p.ID = e.ID

