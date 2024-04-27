BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.ID,
	p_1.SmallIntValue
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
				p.ID as ID,
				p.SmallIntValue as SmallIntValue
			FROM
				LinqDataTypes p
		) p_1 ON p_1.ID = e.ID

