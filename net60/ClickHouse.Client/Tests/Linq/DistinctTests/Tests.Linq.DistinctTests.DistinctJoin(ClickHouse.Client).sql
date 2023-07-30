BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.ID,
	_2.SmallIntValue
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
		) _2 ON _2.ID = e.ID

