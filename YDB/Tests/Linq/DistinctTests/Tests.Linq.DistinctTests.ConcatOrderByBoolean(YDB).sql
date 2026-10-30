-- YDB Ydb
SELECT
	t1.ID as ID,
	t1.BoolValue as BoolValue
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

