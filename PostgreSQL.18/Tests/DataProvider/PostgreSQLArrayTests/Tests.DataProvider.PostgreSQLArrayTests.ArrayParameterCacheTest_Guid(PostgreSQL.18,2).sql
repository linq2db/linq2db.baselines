-- PostgreSQL.18 PostgreSQL
DECLARE @arr -2147483621 -- Object
SET     @arr = {'00000003-0000-0000-0000-000000000000'::uuid}

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
	t."GuidValue" = ANY(:arr)

