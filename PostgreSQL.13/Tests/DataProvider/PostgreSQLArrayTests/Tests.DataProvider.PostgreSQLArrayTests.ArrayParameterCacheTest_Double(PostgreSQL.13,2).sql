-- PostgreSQL.13 PostgreSQL
DECLARE @arr -2147483640 -- Object
SET     @arr = {3.2999999999999998}

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

