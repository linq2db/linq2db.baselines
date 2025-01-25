BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ID,
	t2.MoneyValue,
	t2.DateTimeValue,
	t2.BoolValue,
	t2.GuidValue,
	t2.BinaryValue,
	t2.SmallIntValue,
	t2.StringValue
FROM
	(
		SELECT
			Extend(t1.DateTimeValue, Year to Day) as Date_1,
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
	) t2
WHERE
	(t2.Date_1 = Extend(Mdy(9, 20, 2009), Year to Day) OR t2.Date_1 IS NULL AND Extend(Mdy(9, 20, 2009), Year to Day) IS NULL)

