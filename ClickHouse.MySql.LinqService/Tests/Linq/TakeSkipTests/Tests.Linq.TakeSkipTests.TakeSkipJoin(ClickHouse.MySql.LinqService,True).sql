BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	e.ID,
	p.SmallIntValue
FROM
	(
		SELECT
			t3.ID as ID
		FROM
			(
				SELECT
					t1.ID as ID
				FROM
					LinqDataTypes t1
				UNION ALL
				SELECT
					t2.ID as ID
				FROM
					LinqDataTypes t2
			) t3
		LIMIT 15
	) e
		LEFT JOIN (
			SELECT
				t6.ID as ID,
				t6.SmallIntValue as SmallIntValue
			FROM
				(
					SELECT
						t4.ID as ID,
						t4.SmallIntValue as SmallIntValue
					FROM
						LinqDataTypes t4
					UNION ALL
					SELECT
						t5.ID as ID,
						t5.SmallIntValue as SmallIntValue
					FROM
						LinqDataTypes t5
				) t6
			LIMIT 15
		) p ON p.ID = e.ID
ORDER BY
	e.ID,
	p.ID

