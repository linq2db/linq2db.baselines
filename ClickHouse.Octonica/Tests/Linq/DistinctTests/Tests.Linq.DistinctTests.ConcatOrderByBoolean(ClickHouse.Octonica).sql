-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ID,
	t1.BoolValue
FROM
	(
		SELECT
			t.BoolValue as BoolValue,
			t.ID as ID
		FROM
			LinqDataTypes t
		UNION ALL
		SELECT
			t_1.BoolValue as BoolValue,
			t_1.ID as ID
		FROM
			LinqDataTypes t_1
		WHERE
			t_1.ID > 5
	) t1
ORDER BY
	t1.BoolValue,
	t1.ID

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

