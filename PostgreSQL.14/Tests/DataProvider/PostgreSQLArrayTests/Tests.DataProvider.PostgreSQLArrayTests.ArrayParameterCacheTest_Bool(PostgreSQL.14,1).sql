-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @arr -2147483646 -- Object
SET     @arr = {True}

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
	t."BoolValue" = ANY(:arr)

