BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
	t."BoolValue" = 0 AND (Cast(t."SmallIntValue" as Int) = 5 OR Cast(t."SmallIntValue" as Int) = 7 OR (Cast(t."SmallIntValue" as Int) + 2) - BITAND(Cast(t."SmallIntValue" as Int), 2) = 10)

