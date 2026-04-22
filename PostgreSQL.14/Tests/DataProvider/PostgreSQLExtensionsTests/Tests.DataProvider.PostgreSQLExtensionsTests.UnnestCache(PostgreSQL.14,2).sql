-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @array -2147483639 -- Object
SET     @array = {2,3}

SELECT
	t."Id",
	t."StrValue",
	t."IntValue",
	t."LongValue",
	t."DoubleValue",
	t."DecimalValue",
	t."StrArray",
	t."IntArray",
	t."LongArray",
	t."DoubleArray",
	t."DecimalArray"
FROM
	"SampleClass" t
		INNER JOIN UNNEST(:array) k_1(value) ON t."Id" = k_1.value

