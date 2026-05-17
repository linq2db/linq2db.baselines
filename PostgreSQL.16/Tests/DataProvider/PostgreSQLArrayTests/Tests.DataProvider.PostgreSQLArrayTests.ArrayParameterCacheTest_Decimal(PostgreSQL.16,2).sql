-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @arr -2147483635 -- Object
SET     @arr = {3.3}

SELECT
	t."Id",
	t."IntValue",
	t."LongValue",
	t."DoubleValue",
	t."DecimalValue",
	t."StrValue",
	t."BoolValue",
	t."ShortValue",
	t."FloatValue",
	t."GuidValue",
	t."DateValue"
FROM
	"AllTypesValueTable" t
WHERE
	t."DecimalValue" = ANY(:arr)

