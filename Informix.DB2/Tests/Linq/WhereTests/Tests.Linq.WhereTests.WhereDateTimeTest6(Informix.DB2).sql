-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.DateTimeValue2,
	t1.BoolValue,
	t1.GuidValue,
	t1.SmallIntValue,
	t1.IntValue,
	t1.BigIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1
WHERE
	Extend(t1.DateTimeValue, Year to Day) = Extend(Mdy(9, 20, 2009), Year to Day)

