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
	a_A1_1.TC1 as TC1,
	a_A2_1.TC2 as TC2
FROM
	LinqDataTypes ia
		LEFT JOIN (
			SELECT
				a_A1.GuidValue as GuidValue,
				a_A1.ID as TC1
			FROM
				LinqDataTypes a_A1
			WHERE
				a_A1.ID = 2
		) a_A1_1 ON ia.GuidValue = a_A1_1.GuidValue
		LEFT JOIN (
			SELECT
				a_A2.GuidValue as GuidValue,
				a_A2.ID as TC2
			FROM
				LinqDataTypes a_A2
			WHERE
				a_A2.ID <> 2
		) a_A2_1 ON ia.GuidValue = a_A2_1.GuidValue

