-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @arr -2147483640 -- Object
SET     @arr = {1.1000000000000001,2.2000000000000002}

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
	t."DoubleValue" = ANY(:arr)

