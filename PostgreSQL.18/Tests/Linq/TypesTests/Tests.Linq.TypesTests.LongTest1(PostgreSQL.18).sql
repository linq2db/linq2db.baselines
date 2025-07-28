BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @value Bigint -- Int64
SET     @value = 0::bigint

SELECT
	t."ID",
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

