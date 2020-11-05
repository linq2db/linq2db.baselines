BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.BoolValue,
	t.GuidValue,
	t.BinaryValue,
	t.SmallIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue = TO_DATE('2020-02-29 17:54:55', 'YYYY-MM-DD HH24:MI:SS')

