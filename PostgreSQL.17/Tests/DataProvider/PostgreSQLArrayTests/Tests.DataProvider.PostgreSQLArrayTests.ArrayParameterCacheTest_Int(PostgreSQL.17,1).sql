-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @arr -2147483639 -- Object
SET     @arr = {10,20}

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
	t."IntValue" = ANY(:arr)

