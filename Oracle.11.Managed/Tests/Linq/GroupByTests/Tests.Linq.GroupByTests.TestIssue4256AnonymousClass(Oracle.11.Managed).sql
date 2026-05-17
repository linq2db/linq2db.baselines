-- Oracle.11.Managed Oracle11

SELECT DISTINCT
	1,
	CASE
		WHEN it."SmallIntValue" <> 0 THEN 1
		ELSE 0
	END
FROM
	"LinqDataTypes" it

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

