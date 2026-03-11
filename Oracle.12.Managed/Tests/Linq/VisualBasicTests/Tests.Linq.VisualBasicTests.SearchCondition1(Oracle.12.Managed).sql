-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."BoolValue",
	t."GuidValue",
	t."BinaryValue",
	t."SmallIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."BoolValue" = 0 AND (t."SmallIntValue" = 5 OR t."SmallIntValue" = 7 OR (CAST(t."SmallIntValue" AS Int) + 2) - BITAND(CAST(t."SmallIntValue" AS Int), 2) = 10)

