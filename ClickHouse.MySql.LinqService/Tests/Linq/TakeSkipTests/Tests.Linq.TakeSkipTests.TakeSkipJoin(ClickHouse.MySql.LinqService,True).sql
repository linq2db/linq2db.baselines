BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
				_1.ID as ID,
				_1.SmallIntValue as SmallIntValue
			FROM
				(
					SELECT
						_.ID as ID,
						_.MoneyValue as MoneyValue,
						_.DateTimeValue as DateTimeValue,
						_.BoolValue as BoolValue,
						_.GuidValue as GuidValue,
						_.BinaryValue as BinaryValue,
						_.SmallIntValue as SmallIntValue,
						_.StringValue as StringValue
					FROM
						LinqDataTypes _
					UNION ALL
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
				) _1
			LIMIT 15
		) p ON p.ID = e.ID
ORDER BY
	e.ID,
	p.ID

