BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int64
SET     @value = 0

SELECT
	t.ID,
	t."MoneyValue",
	t."DateTimeValue",
	t."DateTimeValue2",
	t."BoolValue",
	t."GuidValue",
	t."SmallIntValue",
	t."IntValue",
	t."BigIntValue",
	t."StringValue"
FROM
	"LinqDataTypes" t
WHERE
	t."BigIntValue" = :value

