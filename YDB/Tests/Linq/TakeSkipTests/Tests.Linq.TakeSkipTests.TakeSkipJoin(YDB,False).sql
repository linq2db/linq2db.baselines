-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.MoneyValue as MoneyValue,
	t1.DateTimeValue as DateTimeValue,
	t1.BoolValue as BoolValue,
	t1.GuidValue as GuidValue,
	t1.BinaryValue as BinaryValue,
	t1.SmallIntValue as SmallIntValue,
	t1.StringValue as StringValue
FROM
	LinqDataTypes t1

-- YDB Ydb

SELECT
	e.ID as ID,
	p.SmallIntValue as SmallIntValue
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

