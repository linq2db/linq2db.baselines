BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	a_A1.ID,
	a_A2.ID
FROM
	LinqDataTypes ia
		LEFT JOIN LinqDataTypes a_A1 ON a_A1.ID = 2 AND ia.GuidValue = a_A1.GuidValue
		LEFT JOIN LinqDataTypes a_A2 ON a_A2.ID <> 2 AND ia.GuidValue = a_A2.GuidValue

