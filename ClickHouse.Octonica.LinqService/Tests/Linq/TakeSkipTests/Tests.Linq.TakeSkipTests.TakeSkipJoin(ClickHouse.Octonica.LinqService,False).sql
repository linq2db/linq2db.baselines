BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
				UNION ALL
				SELECT
					t2.ID as ID,
					t2.MoneyValue as MoneyValue,
					t2.DateTimeValue as DateTimeValue,
					t2.BoolValue as BoolValue,
					t2.GuidValue as GuidValue,
					t2.BinaryValue as BinaryValue,
					t2.SmallIntValue as SmallIntValue,
					t2.StringValue as StringValue
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
						t4.MoneyValue as MoneyValue,
						t4.DateTimeValue as DateTimeValue,
						t4.BoolValue as BoolValue,
						t4.GuidValue as GuidValue,
						t4.BinaryValue as BinaryValue,
						t4.SmallIntValue as SmallIntValue,
						t4.StringValue as StringValue
					FROM
						LinqDataTypes t4
					UNION ALL
					SELECT
						t5.ID as ID,
						t5.MoneyValue as MoneyValue,
						t5.DateTimeValue as DateTimeValue,
						t5.BoolValue as BoolValue,
						t5.GuidValue as GuidValue,
						t5.BinaryValue as BinaryValue,
						t5.SmallIntValue as SmallIntValue,
						t5.StringValue as StringValue
					FROM
						LinqDataTypes t5
				) t6
			LIMIT 15
		) p ON p.ID = e.ID
ORDER BY
	e.ID,
	p.ID

