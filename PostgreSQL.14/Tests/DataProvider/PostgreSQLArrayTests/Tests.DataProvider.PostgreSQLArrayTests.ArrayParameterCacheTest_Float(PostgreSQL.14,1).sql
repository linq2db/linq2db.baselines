-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @arr -2147483631 -- Object
SET     @arr = {1.10000002,2.20000005}

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
	t."FloatValue" = ANY(:arr)

