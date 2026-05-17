-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @arr -2147483629 -- Object
SET     @arr = {'C'}

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
	t."StrValue" = ANY(:arr)

